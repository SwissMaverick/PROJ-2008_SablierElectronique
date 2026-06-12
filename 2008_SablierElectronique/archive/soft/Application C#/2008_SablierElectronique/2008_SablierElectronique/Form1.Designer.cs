namespace _2008_SablierElectronique
{
    partial class Form1
    {
        /// <summary>
        /// Variable nécessaire au concepteur.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Nettoyage des ressources utilisées.
        /// </summary>
        /// <param name="disposing">true si les ressources managées doivent être supprimées ; sinon, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Code généré par le Concepteur Windows Form

        /// <summary>
        /// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
        /// le contenu de cette méthode avec l'éditeur de code.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.serialPort = new System.IO.Ports.SerialPort(this.components);
            this.btnSend = new System.Windows.Forms.Button();
            this.TempsH = new System.Windows.Forms.TextBox();
            this.TempsM = new System.Windows.Forms.TextBox();
            this.Heures = new System.Windows.Forms.Label();
            this.Minutes = new System.Windows.Forms.Label();
            this.AffHeureRestant = new System.Windows.Forms.Label();
            this.AffMinRestant = new System.Windows.Forms.Label();
            this.portsCombo = new System.Windows.Forms.ComboBox();
            this.Port = new System.Windows.Forms.Label();
            this.openButton = new System.Windows.Forms.Button();
            this.btnClose = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnSend
            // 
            this.btnSend.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSend.Location = new System.Drawing.Point(198, 176);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(88, 42);
            this.btnSend.TabIndex = 0;
            this.btnSend.Text = "Send";
            this.btnSend.UseVisualStyleBackColor = true;
            // 
            // TempsH
            // 
            this.TempsH.Location = new System.Drawing.Point(42, 113);
            this.TempsH.Name = "TempsH";
            this.TempsH.Size = new System.Drawing.Size(156, 20);
            this.TempsH.TabIndex = 1;
            // 
            // TempsM
            // 
            this.TempsM.Location = new System.Drawing.Point(279, 113);
            this.TempsM.Name = "TempsM";
            this.TempsM.Size = new System.Drawing.Size(156, 20);
            this.TempsM.TabIndex = 2;
            // 
            // Heures
            // 
            this.Heures.AutoSize = true;
            this.Heures.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Heures.Location = new System.Drawing.Point(39, 86);
            this.Heures.Name = "Heures";
            this.Heures.Size = new System.Drawing.Size(56, 18);
            this.Heures.TabIndex = 3;
            this.Heures.Text = "Heures";
            // 
            // Minutes
            // 
            this.Minutes.AutoSize = true;
            this.Minutes.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Minutes.Location = new System.Drawing.Point(276, 86);
            this.Minutes.Name = "Minutes";
            this.Minutes.Size = new System.Drawing.Size(60, 18);
            this.Minutes.TabIndex = 4;
            this.Minutes.Text = "Minutes";
            // 
            // AffHeureRestant
            // 
            this.AffHeureRestant.AutoSize = true;
            this.AffHeureRestant.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.AffHeureRestant.Location = new System.Drawing.Point(34, 281);
            this.AffHeureRestant.Name = "AffHeureRestant";
            this.AffHeureRestant.Size = new System.Drawing.Size(0, 46);
            this.AffHeureRestant.TabIndex = 5;
            // 
            // AffMinRestant
            // 
            this.AffMinRestant.AutoSize = true;
            this.AffMinRestant.Font = new System.Drawing.Font("Microsoft Sans Serif", 30F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.AffMinRestant.Location = new System.Drawing.Point(271, 281);
            this.AffMinRestant.Name = "AffMinRestant";
            this.AffMinRestant.Size = new System.Drawing.Size(0, 46);
            this.AffMinRestant.TabIndex = 6;
            // 
            // portsCombo
            // 
            this.portsCombo.FormattingEnabled = true;
            this.portsCombo.Location = new System.Drawing.Point(77, 34);
            this.portsCombo.Name = "portsCombo";
            this.portsCombo.Size = new System.Drawing.Size(121, 21);
            this.portsCombo.TabIndex = 7;
            // 
            // Port
            // 
            this.Port.AutoSize = true;
            this.Port.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Port.Location = new System.Drawing.Point(25, 37);
            this.Port.Name = "Port";
            this.Port.Size = new System.Drawing.Size(36, 18);
            this.Port.TabIndex = 8;
            this.Port.Text = "Port";
            // 
            // openButton
            // 
            this.openButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.openButton.Location = new System.Drawing.Point(233, 34);
            this.openButton.Name = "openButton";
            this.openButton.Size = new System.Drawing.Size(103, 25);
            this.openButton.TabIndex = 9;
            this.openButton.Text = "Open";
            this.openButton.UseVisualStyleBackColor = true;
            // 
            // btnClose
            // 
            this.btnClose.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClose.Location = new System.Drawing.Point(360, 34);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(103, 25);
            this.btnClose.TabIndex = 10;
            this.btnClose.Text = "Close";
            this.btnClose.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(492, 379);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.openButton);
            this.Controls.Add(this.Port);
            this.Controls.Add(this.portsCombo);
            this.Controls.Add(this.AffMinRestant);
            this.Controls.Add(this.AffHeureRestant);
            this.Controls.Add(this.Minutes);
            this.Controls.Add(this.Heures);
            this.Controls.Add(this.TempsM);
            this.Controls.Add(this.TempsH);
            this.Controls.Add(this.btnSend);
            this.Name = "Form1";
            this.Text = "2008_SablierElectronique";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.IO.Ports.SerialPort serialPort;
        private System.Windows.Forms.Button btnSend;
        private System.Windows.Forms.TextBox TempsH;
        private System.Windows.Forms.TextBox TempsM;
        private System.Windows.Forms.Label Minutes;
        private System.Windows.Forms.Label AffHeureRestant;
        private System.Windows.Forms.Label AffMinRestant;
        private System.Windows.Forms.Label Heures;
        private System.Windows.Forms.ComboBox portsCombo;
        private System.Windows.Forms.Label Port;
        private System.Windows.Forms.Button openButton;
        private System.Windows.Forms.Button btnClose;
    }
}

