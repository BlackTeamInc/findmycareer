/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package toechart;

import java.awt.Color;
import javax.swing.JOptionPane;

/**
 *
 * @author 0106267814
 */
public class Registration extends javax.swing.JFrame {
    Welcome welcomePage;

    
    public Registration() {
        initComponents();
        
        getContentPane().setBackground(Color.gray);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        txtFirstName = new javax.swing.JTextField();
        txtLastName = new javax.swing.JTextField();
        txtMiddleName = new javax.swing.JTextField();
        txtDateOfBirth = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        txtAddress = new javax.swing.JTextField();
        txtPhoneNumber = new javax.swing.JTextField();
        txtLandLine = new javax.swing.JTextField();
        txtEducationLevel = new javax.swing.JTextField();
        txtEmail = new javax.swing.JTextField();
        btnSubmit = new javax.swing.JButton();
        jLabel14 = new javax.swing.JLabel();
        cbxAccountType = new javax.swing.JComboBox();
        jLabel15 = new javax.swing.JLabel();
        txtPassword2 = new javax.swing.JPasswordField();
        txtPassword1 = new javax.swing.JPasswordField();
        jLabel17 = new javax.swing.JLabel();
        cbxGender = new javax.swing.JComboBox();
        btnBack = new javax.swing.JButton();
        jLabel18 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(255, 255, 255));
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(619, 51, -1, -1));

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 36)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 153, 0));
        jLabel2.setText("Registration");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 0, 200, -1));

        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel3.setText("First Name* :");
        jLabel3.setToolTipText("");
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 73, -1, -1));

        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel4.setText("Date Of Birth* :");
        jLabel4.setToolTipText("");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 145, -1, -1));

        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel5.setText("Address*:");
        jLabel5.setToolTipText("");
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 197, -1, -1));

        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel6.setText("Level Of Education* :");
        jLabel6.setToolTipText("");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 273, -1, -1));

        jLabel7.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel7.setText("Phone Number :");
        jLabel7.setToolTipText("");
        getContentPane().add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 223, -1, -1));

        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel8.setText("Landline :");
        jLabel8.setToolTipText("");
        getContentPane().add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 247, -1, -1));

        jLabel9.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel9.setText("Last Name* :");
        jLabel9.setToolTipText("");
        getContentPane().add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 97, -1, -1));

        jLabel10.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel10.setText("Middle Name :");
        jLabel10.setToolTipText("");
        getContentPane().add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 121, -1, -1));
        getContentPane().add(txtFirstName, new org.netbeans.lib.awtextra.AbsoluteConstraints(198, 71, 260, -1));
        getContentPane().add(txtLastName, new org.netbeans.lib.awtextra.AbsoluteConstraints(198, 95, 260, -1));
        getContentPane().add(txtMiddleName, new org.netbeans.lib.awtextra.AbsoluteConstraints(198, 119, 260, -1));
        getContentPane().add(txtDateOfBirth, new org.netbeans.lib.awtextra.AbsoluteConstraints(198, 143, 260, -1));

        jLabel11.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel11.setText("Email* :");
        jLabel11.setToolTipText("");
        getContentPane().add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 298, -1, -1));

        jLabel12.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel12.setText("Password* : ");
        jLabel12.setToolTipText("");
        getContentPane().add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 325, -1, -1));

        jLabel13.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel13.setText("Confirm Password* :");
        jLabel13.setToolTipText("");
        getContentPane().add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 353, -1, -1));
        getContentPane().add(txtAddress, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 195, 260, -1));
        getContentPane().add(txtPhoneNumber, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 220, 260, -1));
        getContentPane().add(txtLandLine, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 245, 260, -1));
        getContentPane().add(txtEducationLevel, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 270, 260, -1));
        getContentPane().add(txtEmail, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 295, 260, -1));

        btnSubmit.setBackground(new java.awt.Color(255, 255, 255));
        btnSubmit.setText("Submit");
        btnSubmit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSubmitActionPerformed(evt);
            }
        });
        getContentPane().add(btnSubmit, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 380, -1, -1));

        jLabel14.setText("* required field");
        getContentPane().add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(479, 51, -1, -1));

        cbxAccountType.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Casual", "Admin" }));
        getContentPane().add(cbxAccountType, new org.netbeans.lib.awtextra.AbsoluteConstraints(198, 47, 80, 20));

        jLabel15.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel15.setText("Select Account Type* :");
        getContentPane().add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 50, 130, -1));
        getContentPane().add(txtPassword2, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 350, 260, -1));
        getContentPane().add(txtPassword1, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 320, 260, -1));

        jLabel17.setText("Gender* :");
        getContentPane().add(jLabel17, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 170, -1, -1));

        cbxGender.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Male", "Female" }));
        getContentPane().add(cbxGender, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 173, -1, 20));

        btnBack.setBackground(new java.awt.Color(255, 255, 255));
        btnBack.setText("Back");
        btnBack.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBackActionPerformed(evt);
            }
        });
        getContentPane().add(btnBack, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 380, 70, -1));
        getContentPane().add(jLabel18, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 590, 420));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnSubmitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSubmitActionPerformed
        // TODO add your handling code here:
//        if (txtPassword1.getText().equalsIgnoreCase(txtPassword2.getText())
//            && cbxAccountType.getSelectedItem() != null
//            && txtFirstName.getText().trim().length() != 0
//            && txtLastName.getText().trim().length() != 0
//            && cbxGender.getSelectedItem() != null
//            && txtAddress.getText().trim().length() != 0
//            && txtDateOfBirth.getText().trim().length() != 0
//            && txtEducationLevel.getText().trim().length() != 0
//            && txtPassword1.getText().trim().length() != 0
//            && txtPassword2.getText().trim().length() != 0)
//        {
            
        DetailSummary summaryForm = new DetailSummary();

        DetailSummary.txtAccountType.setText(this.cbxAccountType.getSelectedItem() + "");

        if (txtFirstName.getText().trim().length() != 0) 
        {               
            DetailSummary.txtFirstName.setText(this.txtFirstName.getText());
        }
        else
        {
            JOptionPane.showMessageDialog(null, "Invalid First Name Field");
        }
        if (txtLastName.getText().trim().length() != 0) 
        {
            DetailSummary.txtLastName.setText(this.txtLastName.getText());
        }
        else
        {
            JOptionPane.showMessageDialog(null, "Invalid Last Name Field");
        }

        if (txtAddress.getText().trim().length() != 0) 
        {
            DetailSummary.txtAddress.setText(this.txtAddress.getText());
        }
        else
        {
            JOptionPane.showMessageDialog(null, "Invalid Address Field");
        }

        if (txtDateOfBirth.getText().trim().length() != 0) 
        {
            DetailSummary.txtDateOfBirth.setText(this.txtDateOfBirth.getText());
        }
        else
        {
            JOptionPane.showMessageDialog(null, "Invalid Date Of Birth Field");
        }

        if (txtEducationLevel.getText().trim().length() != 0) 
        {
            DetailSummary.txtEducationLevel.setText(this.txtEducationLevel.getText());
        }
        else
        {
            JOptionPane.showMessageDialog(null, "Invalid Education Level Field");
        }
        
        if (txtEmail.getText().trim().length() != 0) 
        {
            DetailSummary.txtEmail.setText(this.txtEmail.getText());
        }
        
        if (txtPassword1.getText().equalsIgnoreCase(txtPassword2.getText()))
        {
            DetailSummary.txtPassword1.setText(this.txtPassword1.getText());
            DetailSummary.txtPassword2.setText(this.txtPassword2.getText());
        }
        else
        {
            JOptionPane.showMessageDialog(null, "Invalid Password Field");
        }
            
        DetailSummary.txtMiddleName.setText(this.txtMiddleName.getText());
        DetailSummary.txtGender.setText(this.cbxGender.getSelectedItem() + "");
        DetailSummary.txtPhoneNumber.setText(this.txtPhoneNumber.getText());
        DetailSummary.txtLandLine.setText(this.txtLandLine.getText());
        
        if (txtPassword1.getText().equalsIgnoreCase(txtPassword2.getText())
        && cbxAccountType.getSelectedItem() != null
        && txtFirstName.getText().trim().length() != 0
        && txtLastName.getText().trim().length() != 0
        && cbxGender.getSelectedItem() != null
        && txtAddress.getText().trim().length() != 0
        && txtDateOfBirth.getText().trim().length() != 0
        && txtEducationLevel.getText().trim().length() != 0
        && txtPassword1.getText().trim().length() != 0
        && txtPassword2.getText().trim().length() != 0)
        {
            dispose();
            summaryForm.setVisible(true);
        } //end of if statement
    }//GEN-LAST:event_btnSubmitActionPerformed

    private void btnBackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBackActionPerformed
        // TODO add your handling code here:
        if (welcomePage == null)
        {
            welcomePage = new Welcome();
        }
        dispose();
        welcomePage.setVisible(true);
    }//GEN-LAST:event_btnBackActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Registration.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Registration.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Registration.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Registration.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Registration().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBack;
    private javax.swing.JButton btnSubmit;
    public static javax.swing.JComboBox cbxAccountType;
    public static javax.swing.JComboBox cbxGender;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    public static javax.swing.JTextField txtAddress;
    public static javax.swing.JTextField txtDateOfBirth;
    public static javax.swing.JTextField txtEducationLevel;
    public static javax.swing.JTextField txtEmail;
    public static javax.swing.JTextField txtFirstName;
    public static javax.swing.JTextField txtLandLine;
    public static javax.swing.JTextField txtLastName;
    public static javax.swing.JTextField txtMiddleName;
    public static javax.swing.JPasswordField txtPassword1;
    public static javax.swing.JPasswordField txtPassword2;
    public static javax.swing.JTextField txtPhoneNumber;
    // End of variables declaration//GEN-END:variables
}
