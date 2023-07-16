use std::io::{self, Read};

fn wrap_stdin() {
    let mut buf_stdin = String::new();
    io::stdin().read_to_string(&mut buf_stdin).unwrap();

    let mut wrapper = bwrap::EasyWrapper::new(&buf_stdin, 80).unwrap();
    let after = wrapper.wrap().unwrap();

    println!("{}", after);
}

fn main() {
    wrap_stdin();
}
