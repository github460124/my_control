
import 'dart:io';
class SocketUtil {

  SocketUtil _socketUtil;
  Socket socketThis;
  final String ip;
  final int port;
  SocketUtil(this.ip, this.port);


  Future<Socket> connect(String ip, int port) {
    return Socket.connect(ip, port);
  }

  void writeMassage(String val, Future<Socket> f) {
    f.then((socket) {
      socket.write(val);
    });
  }

  List<int> getIntListMassage(Future<Socket> f,) {
    List<int> list;
    f.then((socket) {
      socket.listen((massage) {
        list = massage;
      });
    });
    return list;
  }

  void send(String val){
    Future<Socket> f =connect(ip, port);
    writeMassage(val, f);
  }


  void closeSocket(Socket s) {
    s.close();
  }
}