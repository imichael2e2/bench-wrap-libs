
echo "compiling bwrap..."
cd use_bwrap_easy && rm -f a.out && \
    cargo build --release --quiet
ln -s target/release/use_bwrap_easy a.out 
cd ..

echo "compiling textwrap..."
cd use_textwrap && rm -f a.out && \
    cargo build --release --quiet
ln -s target/release/use_textwrap a.out 
cd ..

echo "compiling textflowcpp..."
# git clone --depth=1 https://github.com/catchorg/textflowcpp
cd use_textflowcpp && rm -f a.out && \
    g++ -I/tmp/textflowcpp main.cc -O3
cd ..


echo "generating samples..."
bash gen-sample-linear.bash

bash bench-rtime.bash
bash bench-mem.bash
