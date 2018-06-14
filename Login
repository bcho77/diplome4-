 private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        
     
         rs = db.querySelectAll("utilisateur", "Id_user='" + txt_username.getText() + "' and Password='" + txt_password.getText() + "'");
        try {
            while (rs.next()) {
                username1 = rs.getString("Id_user");
                password1 = rs.getString("Password");
                hak = rs.getString("Type");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Login1.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (username1 == null && password1 == null) {
            JOptionPane.showMessageDialog(this, "le nom utilisateur ou le mots de pass est incorrect");
        } else {
            if (hak.equals("directeur")) {
                Principal h = new Principal();
                h.setVisible(true);
                this.dispose();
            }else  if(hak.equals("Cashier")) { 
                Cachie k = new Cachie();
                k.setVisible(true);
                this.dispose();
            }else if(hak.equals("counter")) {
                Counter k = new Counter();
                k.setVisible(true);
                this.dispose();
            }else if(hak.equals("Product_manager")) {
                Produi k = new Produi();
                k.setVisible(true);
                this.dispose();
            }else if(hak.equals("Worker's manager")) {
                Utilisateu k = new Utilisateu();
                k.setVisible(true);
                this.dispose();
            }
        }
