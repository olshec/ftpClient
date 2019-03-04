using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Net;
using System.Net.Sockets;
using System.IO;
using System.Threading;
using System.Text.RegularExpressions;
namespace TCP__1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }


        TcpClient tcpClient;            //соединение управления
        TcpClient tcpData;              //соединение данных
        bool er;                        //ошибка
        string returnData;              //возвращаемые значения соединением управления
        Regex rx = new Regex("^[0-9]");
        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            label1.Text = "";
            label2.Text = "";


            bool d = true;
            for (int i = 0; i < textPort_.Text.Length; i++)
            {
                if (!Char.IsDigit(textPort_.Text.ToCharArray()[i]))
                    d = false;
            }
           // bool adress = true;
            if (textAdress_.Text != "")
            {

                if (textPort_.Text.Length <= 5 && textPort_.Text != "" && d)//проверка на количество знаков в поле "порт"
                {
                    CheckForIllegalCrossThreadCalls = false;//отключаем контроль потоков элементов управления
                    //создадим поток для работы с сервером
                    System.Threading.Thread MyThread1 =
                          new System.Threading.Thread(delegate() { GoIn(); });
                    MyThread1.Start();
                }
                else { MessageBox.Show("Неверные значения в поле \"Порт\""); }
            }
            else { MessageBox.Show("Недопустимый URI: Невозможно выполнить разбор имени хоста"); }

        }


        void GoIn() {
            try
            {
                er = false;
                tcpClient = new TcpClient();
                try
                {//соединяемся с сервером
                    tcpClient.Connect(textAdress_.Text, Convert.ToInt32(textPort_.Text));
                }
                catch (SocketException se) { 
                    er = true;
                    //label1.Text = "Подключено!"; 
                   // MessageBox.Show(se.ToString()); 

                }

                if (er == false)
                {
                  //  textLog.ReadOnly = true;
                    NetworkStream tcpStream = tcpClient.GetStream(); //считываем данные из потока управления
                    label1.Text = "Подключено!"; 
                    proverka();
                    
                    //посылаем логин
                    SendMessage("USER " + textLog.Text); 
                    proverka();
                    if (returnData.ToCharArray()[0] != '2' || returnData.ToCharArray()[1] != '3' || returnData.ToCharArray()[2] != '0')
                    {
                        //посылаем пароль
                        SendMessage("PASS " + textPass.Text);
                        proverka();
                    }
                    MyContactData();//открываем соединение для данных
                    SendMessage("SYST"); //узнаём имя ОС
                    byte[] bytes = new byte[tcpClient.ReceiveBufferSize];
                    int bytesReade = tcpStream.Read(bytes, 0, tcpClient.ReceiveBufferSize);
                    returnData = Encoding.ASCII.GetString(bytes, 0, bytesReade);
                    textBox1.AppendText("\n" + returnData);
                    label2.Text = "Версия ОС сервера: " + new string(returnData.ToCharArray(), 4, returnData.Length-4);
                    
                    SendMessage("LIST");
                    strProv();
                    
                }
                else
                {
                    label1.Text = "Не подключено!";
                }

                if (!Directory.Exists("downloadFolder"))
                    Directory.CreateDirectory("downloadFolder");
            }
            catch { ;}
        }
        //получаем содержимое каталога
        void strProv()
        {
            proverka();
            proverka();
            textBox2.Text = "";

            SendMessage("XPWD");//Показывает имя текущего рабочего каталога
            proverka();
            string nameCatalog = new string(returnData.ToCharArray(),4,returnData.Length-4);
            int a1 = nameCatalog.IndexOf("\"");
            int a2 = nameCatalog.IndexOf("\"",a1+1);
            string nameCat = new string(nameCatalog.ToCharArray(),a1,a2+1);
            textBox2.AppendText("Имя текущего каталога: " + nameCat + "\n");
            textBox2.AppendText("\n");

            textBox2.AppendText("Тип              Размер (байт)                Имя" + "\n");
            textBox2.AppendText("\n");
            //считываем данные из потока данных
            NetworkStream tcpStreamR = tcpData.GetStream();
            byte[] bytesMain = new byte[tcpData.ReceiveBufferSize];
            int bytesReadeMain = tcpStreamR.Read(bytesMain, 0, tcpData.ReceiveBufferSize);
            string returnDataMain = Encoding.ASCII.GetString(bytesMain, 0, bytesReadeMain);
            //убераем лишние пробелы
            string res = System.Text.RegularExpressions.Regex.Replace(returnDataMain, " +", " ");
            string[] strN = res.Split('\n');//разделяем строки
            MyContactData();
            SendMessage("NLST");//получаем имена файлов
            proverka();
            
            NetworkStream tcpStreamR2 = tcpData.GetStream();
            byte[] bytesMain2 = new byte[tcpData.ReceiveBufferSize];
            int bytesReadeMain2 = tcpStreamR2.Read(bytesMain2, 0, tcpData.ReceiveBufferSize);
            string returnDataMain2 = Encoding.ASCII.GetString(bytesMain2, 0, bytesReadeMain);
            string[] strN2 = returnDataMain2.Split('\n');

            //печатаем содержимое каталога в форматированном виде
            int k = 0;
            for (int i = 0; i < strN.Length-1; i++)
            {
                
                    string[] str = strN[i].Split(' ');
                    if (str[0].ToCharArray()[0] != 'd'  && str[0].ToCharArray()[0] != '-')
                    {
                        textBox1.AppendText("\n" + strN[i]);
                        continue;
                    }
                    if (str[0].ToCharArray()[0] == 'd')
                        textBox2.AppendText("\n" + "Папка" + new string(' ', 10));
                    else 
                        textBox2.AppendText("\n" + "Файл" + new string(' ', 11));
                    int length_ = 40 - (str[4].Length * 2);
                    if (str[0].ToCharArray()[0] == 'd')
                        textBox2.AppendText("---" + new string(' ', 37));
                    else
                        textBox2.AppendText(str[4] + new string(' ', length_));
                    textBox2.AppendText(strN2[k] + "\n");
                    k++;
                
            }
            proverka();



        }


        //перейти в каталог
        private void GoTo_Click(object sender, EventArgs e)
        {

            System.Threading.Thread MyThread1 =
                  new System.Threading.Thread(delegate() { GoToFolder(); });
            MyThread1.Start();
            
        }
        //функция перехода в каталог
        void GoToFolder() {
            try
            {
                if (er == false)
                {
                    NetworkStream tcpStream = tcpClient.GetStream();
                    SendMessage("CWD " + textCwd.Text);//Изменяет рабочий каталог или библиотеку
                    proverka();
                    MyContactData();//открываем соединение для данных
                    SendMessage("LIST");//Выдает список файлов или каталогов
                    strProv();//получаем содержимое каталога
                                       
                }
            }
            catch { ;}
        }
        //вернуться в родительский каталог
        private void Back_Click(object sender, EventArgs e)
        {
            textCwd.Text = "";
            textBox2.Text = "";
            System.Threading.Thread MyThread1 =
                 new System.Threading.Thread(delegate() { GoBack(); });
            MyThread1.Start();
        }

        void GoBack() {
            try
            {
                if (er == false)
                {
                    NetworkStream tcpStream = tcpClient.GetStream();
                    SendMessage("CWD ..");//Изменяет рабочий каталог или библиотеку
                    proverka();
                    MyContactData();        //открываем соединение для данных
                    SendMessage("LIST");//Выдает список файлов или каталогов
                    strProv();          //получаем содержимое каталога
                }
            }
            catch { ;}
        }
        //копировать файл или каталог
        private void button8_Click(object sender, EventArgs e)
        {
            System.Threading.Thread MyThread1 =
                  new System.Threading.Thread(delegate() { downLoadAll(textCopy.Text); });
            MyThread1.Start();
        }


        int perehod = 0;
        string FLD = "",lastFLD="";
        //копировать файл или каталог
        void downLoadAll(string sss)
        {
            try
            {
                if (sss != "")
                {

                    MyContactData();//открываем соединение для данных
                    NetworkStream tcpStreamMain = tcpClient.GetStream();
                    SendMessage("LIST");//Выдает список файлов или каталогов
                    proverka();


                    NetworkStream tcpStreamR = tcpData.GetStream();
                    byte[] bytesMain = new byte[tcpData.ReceiveBufferSize];
                    int bytesReadeMain = tcpStreamR.Read(bytesMain, 0, tcpData.ReceiveBufferSize);
                    string returnDataMain = Encoding.ASCII.GetString(bytesMain, 0, bytesReadeMain);
                    proverka();

                    string[] masStr = returnDataMain.Split('\n');
                    for (int i = 0; i < masStr.Length - 1; i++)
                    {
                        string[] str1 = masStr[i].Split(' ');
                        string[] masStr2 = str1[str1.Length - 1].Split('\r');

                        string[] masStrCopy = sss.Split(' ');
                        string strCopy = masStr2[0];
                        if (masStrCopy.Length > 1)
                        {
                            if (str1.Length >= masStrCopy.Length)
                            {
                                for (int z = str1.Length - 2; z > (str1.Length - 2 - masStrCopy.Length + 1); z--)
                                {
                                    string ss = str1[z] + " " + strCopy;
                                    strCopy = ss;
                                }
                            }
                        }


                        if (strCopy == sss)
                            if (str1[0].ToCharArray()[0] == '-')
                            {
                                NetworkStream tcpStreamInfo = tcpClient.GetStream();

                                SendMessage("Type I"); //передача в битовом режиме
                                proverka();

                                MyContactData();//открываем соединение для данных
                                SendMessage("RETR " + strCopy);//копировать файл


                                proverka();

                                FileStream fs = new FileStream("downloadFolder/" + FLD + strCopy, FileMode.Create);////создать файл
                                BinaryWriter bw = new BinaryWriter(fs);

                                NetworkStream tcpStream = tcpData.GetStream();
                                int sizeMas = 100000;
                                byte[] bytes = new byte[sizeMas];
                                int bytesReade = tcpStream.Read(bytes, 0, sizeMas);
                                while (bytesReade > 0)
                                {
                                    string returnData = Encoding.ASCII.GetString(bytes, 0, bytesReade);
                                    bw.Write(bytes, 0, bytesReade);

                                    bytesReade = tcpStream.Read(bytes, 0, sizeMas);
                                }

                                bw.Close();
                                fs.Close();

                                proverka();
                            }
      


                            else if (str1[0].ToCharArray()[0] == 'd')
                            {
                                FLD += strCopy;
                                lastFLD = strCopy + "/";
                                Directory.CreateDirectory("downloadFolder/" + FLD);
                                FLD += "/";
                                perehod++;
                                SendMessage("CWD " + strCopy);
                                proverka();
                                downLoadAll("");
                            }

        
                    }
                    if (perehod > 0)
                    {
                        FLD = new string(FLD.ToCharArray(), 0, FLD.Length - lastFLD.Length);
                        SendMessage("CWD ..");
                        proverka();
                        perehod--;
                    }
                }
                else if (sss == "")
                {


                    MyContactData();//открывает соединение для данных
                    NetworkStream tcpStreamMainZ = tcpClient.GetStream();
                    SendMessage("NLST");// 	Выдает список файлов или каталогов
                    proverka();

                    NetworkStream tcpStreamRZ = tcpData.GetStream();
                    byte[] bytesMainZ = new byte[tcpData.ReceiveBufferSize];
                    int bytesReadeMainZ = tcpStreamRZ.Read(bytesMainZ, 0, tcpData.ReceiveBufferSize);
                    string returnDataMainZ = Encoding.ASCII.GetString(bytesMainZ, 0, bytesReadeMainZ);

                    proverka();

                    string[] masStrZ = returnDataMainZ.Split('\n');
                    for (int K = 0; K < masStrZ.Length - 1; K++)
                    {
                        sss = new string(masStrZ[K].ToCharArray(), 0, masStrZ[K].Length - 1);


                        MyContactData();
                        NetworkStream tcpStreamMain = tcpClient.GetStream();
                        SendMessage("LIST");
                        proverka();


                        NetworkStream tcpStreamR = tcpData.GetStream();
                        byte[] bytesMain = new byte[tcpData.ReceiveBufferSize];
                        int bytesReadeMain = tcpStreamR.Read(bytesMain, 0, tcpData.ReceiveBufferSize);
                        string returnDataMain = Encoding.ASCII.GetString(bytesMain, 0, bytesReadeMain);
                        proverka();

                        string[] masStr = returnDataMain.Split('\n');
                        for (int i = 0; i < masStr.Length - 1; i++)
                        {
                            string[] str1 = masStr[i].Split(' ');
                            string[] masStr2 = str1[str1.Length - 1].Split('\r');

                            string[] masStrCopy = sss.Split(' ');
                            string strCopy = masStr2[0];
                            if (masStrCopy.Length > 1)
                            {
                                if (str1.Length >= masStrCopy.Length)
                                {
                                    for (int z = str1.Length - 2; z > (str1.Length - 2 - masStrCopy.Length + 1); z--)
                                    {
                                        string ss = str1[z] + " " + strCopy;
                                        strCopy = ss;
                                    }
                                }
                            }


                            if (strCopy == sss)
                                if (str1[0].ToCharArray()[0] == '-')
                                {
                                    NetworkStream tcpStreamInfo = tcpClient.GetStream();

                                    SendMessage("Type I");//Задает тип передачи файлов
                                    proverka();

                                    MyContactData();
                                    SendMessage("RETR " + strCopy);// 	Получает данные от сервера


                                    proverka();
                                    //download file
                                    FileStream fs = new FileStream("downloadFolder/" + FLD + strCopy, FileMode.Create);//создать файл
                                    BinaryWriter bw = new BinaryWriter(fs);

                                    NetworkStream tcpStream = tcpData.GetStream();
                                    int sizeMas = 100000;
                                    byte[] bytes = new byte[sizeMas];

                                    int bytesReade = tcpStream.Read(bytes, 0, sizeMas);

                                    while (bytesReade > 0)
                                    {
                                        string returnData = Encoding.ASCII.GetString(bytes, 0, bytesReade);
                                        bw.Write(bytes, 0, bytesReade);

                                        bytesReade = tcpStream.Read(bytes, 0, sizeMas);
                                    }

                                    bw.Close();
                                    fs.Close();

                                    proverka();

                                }
                                


                                else if (str1[0].ToCharArray()[0] == 'd')
                                {
                                    FLD += strCopy;
                                    lastFLD = strCopy + "/";
                                    Directory.CreateDirectory("downloadFolder/" + FLD);
                                    FLD += "/";
                                    perehod++;
                                    SendMessage("CWD " + strCopy);
                                    proverka();
                                    downLoadAll("");
                                }
                        }


                    }
                    if (perehod > 0)
                    {
                        FLD = new string(FLD.ToCharArray(), 0, FLD.Length - lastFLD.Length);
                        SendMessage("CWD ..");
                        proverka();
                        perehod--;
                    }
                }
            }
            catch { ;}

        }

        //установить соединение для данных
        void MyContactData()
        {
            try
            {

                NetworkStream tcpStream = tcpClient.GetStream();

                SendMessage("PASV");//Указывает, должен ли сервер устанавливать пассивное информационное соединение
                //далее разбираем полученное от сервера выражение для вычисление порта и адреса
                proverka();


                int[] parts = new int[6];
                try
                {
                    int index1 = returnData.IndexOf('(');
                    int index2 = returnData.IndexOf(')');
                    string endPointData = returnData.Substring(index1 + 1, index2 - index1 - 1);
                    string[] endPointParts = endPointData.Split(',');
                    for (int i = 0; i < 6; i++)
                    {
                        parts[i] = int.Parse(endPointParts[i]);
                    }
                }
                catch
                {
                    throw new WebException("Malformed PASV reply: " + returnData);
                }

                string ipAddress = parts[0] + "." + parts[1] + "." + parts[2] + "." + parts[3];
                int port = (parts[4] * 256) + parts[5];
                tcpData = new TcpClient();
                tcpData.Connect(ipAddress, port);//соединяемся с сервером
            }
            catch { ;}
        }

        //получаем данные от сервера в потоке управления
        void proverka()
        {
            try
            {
                NetworkStream tcpStream = tcpClient.GetStream();
                int size = tcpClient.ReceiveBufferSize;
                byte[] bytes = new byte[size];
                int bytesReade = tcpStream.Read(bytes, 0, size);
                returnData = Encoding.ASCII.GetString(bytes, 0, bytesReade);
                textBox1.AppendText("\n"+returnData);

                if (returnData.IndexOf("-") == 3)
                {
                    string newStr=new string(returnData.ToCharArray(),0,3);
                    string ss = newStr + " ";
                    int firstCharacter = returnData.IndexOf(ss);
                    while (firstCharacter == -1 || returnData.ToCharArray()[returnData.Length - 1] != '\n' || returnData.ToCharArray()[returnData.Length - 2] != '\r')
                    {

                        bytesReade = tcpStream.Read(bytes, 0, size);
                        returnData = Encoding.ASCII.GetString(bytes, 0, bytesReade);
                        textBox1.AppendText("\n" + returnData);
                        firstCharacter = returnData.IndexOf(ss);

                    }
                }



            }
            catch { ;}

        }

        //отправляем данные серверу
        public void SendMessage(string zapros)
        {
            try
            {
                textBox1.AppendText("--->"+zapros+"\n");
                NetworkStream tcpStream = tcpClient.GetStream();
                zapros += "\r\n";
                byte[] sendBytes = Encoding.ASCII.GetBytes(zapros);
                tcpStream.Write(sendBytes, 0, sendBytes.Length);
            }
            catch { ;}
        }


        //выход из программы
        private void Exit_Click(object sender, EventArgs e)
        {
            try
            {
                if (tcpClient.Connected)
                {
                    SendMessage("QUIT");//разорвать соединение с сервером
                }
            }
            catch {;}
            this.Close();
        }
        //устанавливаем положение формы в центре экрана
        private void Form1_Load(object sender, EventArgs e)
        {
            this.Location = new Point(Screen.PrimaryScreen.Bounds.Width / 2 - this.Width / 2,
              Screen.PrimaryScreen.Bounds.Height / 2 - this.Height / 2);
        }






    }
}
