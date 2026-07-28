void main() {
  execute(() {
    print('Hello Dart!');
  });
}

void execute(Function action) {
  action(); 
}