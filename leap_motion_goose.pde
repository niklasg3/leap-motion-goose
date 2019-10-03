import java.awt.Robot;
import java.awt.event.KeyEvent;

Robot gooseRobot;

void setup() {
    size(320, 240);
    
    try {
        gooseRobot = new Robot();
    } catch (Exception e) {
        e.printStackTrace();  
    }
}

void draw() {
    background(0);
    if (frameCount % 60 == 0) {
        gooseRobot.keyPress(KeyEvent.VK_SPACE);
    }
    
    if ((frameCount + 30) % 60 == 0) {
        gooseRobot.keyRelease(KeyEvent.VK_SPACE);
    }
}

void keyPressed() {

}
