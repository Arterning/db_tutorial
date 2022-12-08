今天尝试了一下Ruby

首先是安装环境
sudo apt install ruby-full

ruby --version

安装成功

尝试直接执行 ruby main_spec.rb 
失败
好像先要安装bundle
gem install bundler
然后
bundle install
这个相当于npm install吧
然后果然就是在安装依赖这一步失败了 和npm一样的德性我真是佛了
尝试修改换国内源无果
GG
暂时搁置。。