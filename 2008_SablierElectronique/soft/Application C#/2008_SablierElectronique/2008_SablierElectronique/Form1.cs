using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _2008_SablierElectronique
{
    public partial class Form1 : Form
    {
        public delegate void ReceiverD();

        private ReceiverD receiverDelegate;

        public Form1()
        {
            InitializeComponent();
            // Récupération des ports disponble
            string[] ports = SerialPort.GetPortNames();
            portsCombo.Items.AddRange(ports);

            // Création de delagate de réception
            receiverDelegate = new ReceiverD(receive_value);

            // Empêche le redimesionnement de la fenêtre
            this.FormBorderStyle = FormBorderStyle.FixedSingle;

        }

        private void receive_value()
        {
            // Récupération des données reçues 
            byte[] array = new byte[5];
            serialPort.Read(array, 0, 5);
            if ((array[0] == 0xA) && (array[1] == 0xA))
            {
                AffHeureRestant.Text = array[2].ToString();
                AffMinRestant.Text = array[3].ToString();

            }

        }
        private void serialPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            // Invocation du delagate
            this.Invoke(receiverDelegate);
        }
        private void openButton_Click(object sender, EventArgs e)
        {
            // Si le port est fermé
            if (serialPort.IsOpen == false)
            {

                // Configuration du port
                if ((string)portsCombo.SelectedItem == null)
                {
                    MessageBox.Show("Port COM non sélectionné", "Port COM non sélectionné");
                    return;
                }
                serialPort.PortName = (string)portsCombo.SelectedItem;
                serialPort.BaudRate = 57600;
                serialPort.Parity = Parity.None;
                serialPort.DataBits = 8;
                serialPort.StopBits = StopBits.One;
                serialPort.Handshake = Handshake.RequestToSend;

                // Set the read/write timeouts
                serialPort.ReadTimeout = 500;
                serialPort.WriteTimeout = 500;

                // Essaie d'ouvrir le port
                try
                {
                    serialPort.Open();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString(), "Error at port opening");
                }

            }
        }
        private void send_message()
        {
            // Si le port est ouvert
            if (serialPort.IsOpen == true)
            {
                // Essaie l'envoi
                try
                {
                    if ((int.Parse(TempsH.Text) <= 4) && (int.Parse(TempsM.Text) <= 60)||(int.Parse(TempsH.Text) == 0) && (int.Parse(TempsM.Text) > 5))
                    {
                    

                        string str = $"AA{TempsH.Text}{TempsM.Text}";


                        serialPort.Write(str);
                    }
                }
                catch (Exception ex)
                {
                    // Affichage message d'erreur
                    MessageBox.Show(ex.ToString(), "Error with writing message");
                }
            }
        }
        private void btnSend_Click(object sender, EventArgs e)
        {
            if (!serialPort.IsOpen)
            {
                MessageBox.Show("Le port COM n'est pas ouvert", "Port COM fermé");
                return;
            }
            // Envoi du message
            send_message();
        }
        private void btnClose_Click(object sender, EventArgs e)
        {
            // Essaie la fermeture
            try
            {
                serialPort.Close();
            }
            catch (Exception ex)
            {
                // Sinon affiche un message
                MessageBox.Show(ex.ToString(), "Error with port closing");
            }
        }
    }
}
