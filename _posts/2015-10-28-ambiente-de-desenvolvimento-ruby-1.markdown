---
layout: post
title: "Ambiente de desenvolvimento Ruby - parte 1"
description: "Instalando e conhecendo algumas das ferramentas para utilizarmos no nosso ambiente de desenvolvimento."
video: Zkgm9gGbQjc
categories: vídeo
tags: [básico, ambiente de desenvolvimento]
---

Você pode pensar no ambiente de desenvolvimento como a oficina do programador. As ferramentas organizadas nas paredes ou nas estantes, cada uma escolhida a dedo e adaptada para servir como uma luva quem vai ter que lidar com ela todos os dias.

Então eu vou mostrar algumas das ferramentas que utilizo no meu ambiente de desenvolvimento com **Vagrant** e **Ubuntu 14.04**.

E para facilitar a vida, vou deixar aqui os comandos utilizados no vídeo ;-)

Atualizando o `apt-get`
{% highlight console %}
sudo apt-get update
sudo apt-get upgrade
{% endhighlight %}

Instalando o `git`
{% highlight console %}
sudo apt-get install git
{% endhighlight %}

Instalando o `ag`
{% highlight console %}
sudo apt-get install silversearcher-ag
{% endhighlight %}

Instalando o `rbenv`
{% highlight console %}
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile
source ~/.profile
{% endhighlight %}

Instalando o `ruby-build`
{% highlight console %}
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
{% endhighlight %}

Instalando o `ruby`
{% highlight console %}
sudo apt-get install libssl-dev libreadline-dev zlib1g-dev
rbenv install 2.2.3
{% endhighlight %}

Instalando o `postgres`
{% highlight console %}
sudo apt-get install postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser -s vagrant
{% endhighlight %}

Instalando o `rails`
{% highlight console %}
rbenv local 2.2.3
gem install rails --no-document
{% endhighlight %}

{% include youtube.html id="Zkgm9gGbQjc" %}

Links
- [git](https://git-scm.com/downloads){:target="_blank"}
- [ag](https://github.com/ggreer/the_silver_searcher#installing){:target="_blank"}
- [rbenv](https://github.com/sstephenson/rbenv#installation){:target="_blank"}
- [ruby-build](https://github.com/sstephenson/ruby-build#installation){:target="_blank"}
- [ruby](https://www.ruby-lang.org/pt/downloads){:target="_blank"}
- [postgres](http://www.postgresql.org/download){:target="_blank"}
- [rails](http://rubyonrails.org/download){:target="_blank"}
