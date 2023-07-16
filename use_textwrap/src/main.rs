use std::io::{self, Read};

fn wrap_stdin() {
    let mut buf_stdin = String::new();
    std::io::stdin().read_to_string(&mut buf_stdin).unwrap();

    let mut wrapped = "".to_string();
    let parts = textwrap::wrap(&buf_stdin, 80);
    for ele in &parts {
        wrapped += &ele;
        wrapped += "\n";
    }

    println!("{}", wrapped);
}

fn main() {
    wrap_stdin();
}
