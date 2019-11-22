package com.luke.es.listener;

import com.luke.server.ftp.LukeFtpServer;
import org.apache.ftpserver.FtpServer;
import org.springframework.beans.factory.annotation.Value;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.ArrayList;
import java.util.List;

@WebListener
public class FtpListener implements ServletContextListener {

    @Value("${use.luke.ftp}")
    String useLukeFtp = "false";
    @Value("${use.luke.ftp.homePath}")
    String useLukeFtpHomePath = "\\";
    FtpServer ftp = null;

    public void contextInitialized(ServletContextEvent sce) {
        if ("true".equals(useLukeFtp)) {
            LukeFtpServer ftpServer = new LukeFtpServer();
            List<String> ftpParam = new ArrayList<>();
            ftpParam.add("-homePath");
            ftpParam.add(useLukeFtpHomePath);
//            ftpParam.add("-w") ;
//            ftpParam.add("false") ;
            String[] args = new String[ftpParam.size()];
            ftpParam.toArray(args);
            ftp = ftpServer.ftpStart(args);
        }
    }

    public void contextDestroyed(ServletContextEvent sce) {
        if (ftp != null && !ftp.isStopped()) {
            ftp.stop();
        }
    }
}
