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
            MessageBox.Show("Paquete Económico: Ataúd Metálico, Mobiliario para 50 personas, Traslado C-I-P, 4 sirios. $15,600.00", "CONTENIDO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            btnenter.Focus();
        }

        private void bt_Economico_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Paquete Estándar: Velación en capilla, Flores, Servicio de Cafetería Ilimitado. $28,400.00", "CONTENIDO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            btnenter.Focus();
        }

        private void bt_Oro_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Oro: Misa de cuerpo presente, Ataúd de Madera, Sirios Ilimitados.  $65,400.00", "CONTENIDO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            btnenter.Focus();
        }

        private void bt_Diamante_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Paquete Diamante: Ataúd es de madera fina o plus (Cedro, Caoba), Cremación.  $105,200.00", "CONTENIDO", MessageBoxButtons.OK, MessageBoxIcon.Information);
            btnenter.Focus();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Paquetes_KeyPress(object sender, KeyPressEventArgs e)
        {

        }

        private void btnenter_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
            {
                Datos da = new Datos();
                this.Close();
                da.Show();
            }
        }

        private void btnenter_Click(object sender, EventArgs e)
        {
            Datos da = new Datos();
            this.Close();
            da.Show();
        }
    }
}
