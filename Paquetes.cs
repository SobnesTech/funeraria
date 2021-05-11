using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sistema_de_deciciones_de_Funeraria
{
    public partial class Paquetes : Form
    {
        public Paquetes()
        {
            InitializeComponent();
        }


        private void bt_Estandar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Paquete Económico: Ataúd Metálico, Mobiliario para 50 personas, Traslado C-I-P, 4 sirios. $15,600.00", "AVISO", MessageBoxButtons.YesNo, MessageBoxIcon.Information) == DialogResult.Yes)
            {
                bt_sig.Focus();
            }
        }

        private void bt_Economico_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Paquete Estándar: Velación en capilla, Flores, Servicio de Cafetería Ilimitado. $28,400.00", "AVISO", MessageBoxButtons.YesNo, MessageBoxIcon.Information) == DialogResult.Yes)
            {
                bt_sig.Focus();
            }
                
        }

        private void bt_Oro_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Oro: Misa de cuerpo presente, Ataúd de Madera, Sirios Ilimitados.  $65,400.00", "AVISO", MessageBoxButtons.YesNo, MessageBoxIcon.Information) == DialogResult.Yes)
            {
                bt_sig.Focus();
            }
        }

        private void bt_Diamante_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Paquete Diamante: Ataúd es de madera fina o plus (Cedro, Caoba), Cremación.  $105,200.00", "AVISO", MessageBoxButtons.YesNo, MessageBoxIcon.Information) == DialogResult.Yes)
            {
                bt_sig.Focus();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void bt_sig_Click(object sender, EventArgs e)
        {
            Datos da = new Datos();
            da.Show();
            this.Close();
        }

        private void Paquetes_Load(object sender, EventArgs e)
        {
            bt_sig.Focus();
        }
    }
}
