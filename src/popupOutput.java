import javax.swing.*;
import java.awt.*;

public class popupOutput extends JFrame {
    private JPanel panel1;
    private JTextArea textArea;

    public void SetText(String txt){
        this.textArea.append(txt);
    }

    popupOutput(String title){
        super(title);

        this.setVisible(true);

        this.setTitle(title);

        this.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);

        this.setResizable(false);



        this.setContentPane(panel1);

        panel1.setPreferredSize( new Dimension( 400, 400 ) );
        this.pack();

    }
}