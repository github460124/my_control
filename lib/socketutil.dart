
import 'dart:io';
class SocketUtil {

  SocketUtil _socketUtil;

  SocketUtil();

  SocketUtil getInstance() {
    if (_socketUtil == null)
      _socketUtil = new SocketUtil();
    return _socketUtil;
  }

  Future<Socket> connect(String ip, int port, String val) {
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

  void closeSocket(Socket s) {
    s.close();
  }
}