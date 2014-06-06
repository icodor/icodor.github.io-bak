---
layout: post
title: iOS开发日志
categories:
- Programming
tags:
- iOS
---
#禁用textView输入

{% highlight objc linenos%}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    return NO;
}
{% endhighlight %}

#1.计算输入文字在指定字体、指定容器和指定换行方式下的size.
{% highlight objc linenos%}
    CGSize constraintSize;
    constraintSize.width = 300;
    constraintSize.height = MAXFLOAT;
    CGSize sizeFrame =[textContent sizeWithFont:textView.font constrainedToSize:constraintSize lineBreakMode:UILineBreakModeWordWrap];
    textView.frame = CGRectMake(0,0,sizeFrame.width,sizeFrame.height);
{% endhighlight %}

其中，textContent指textview的内容。
这是大家一直推崇的一种方法，可是我适用的时候，确实越到各种麻烦。
不能够算出准确的高度，也就是说，计算出的高度太小了。不能显示全部内容。这可能和我的内容中包含\n换行符有关吧。

显然这个方法无法满足我的要求，于是乎，我自己折腾了会，想想用笨办法试，开心的是，居然完美解决了我的问题。

#2.利用 contentSize.height（iOS7有问题）
*初始化
{% highlight objc linenos%}
UITextView *textview  = [[UITextView alloc]initWithFrame:CGRectMake(0, 0, 320, 330)];
{% endhighlight %}


这里的height可以先随便设置，反正最后还得根据对应的内容进行修改。

*加入到视图中
{% highlight objc linenos%}
    [self.view addSubview:textview];
{% endhighlight %}


#三。重新定义大小。
{% highlight objc linenos%}
    textview.frame = CGRectMake(0, 0, 320, textview.contentSize.height)
{% endhighlight %}
#6.单例模式的实例：
    （1）Objective-C代码：
{% highlight objc linenos%}
+ (id)getSingletonInstance
{
    static Singleton *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (instance == nil)
        {
            instance = [[Singleton alloc] init];
        }
    });
    return instance;
}
- (void)dealloc
{
    [super dealloc];
}
- (id)init
{
    self = [super init];
    if (nil == instance)
    {
    }
    return instance;
}
{% enhighlight %}

