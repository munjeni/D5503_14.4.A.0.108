.class Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2$1;
.super Ljava/lang/Object;
.source "CityIdDecorator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;

.field final synthetic val$cityId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2$1;->this$1:Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;

    iput-object p2, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2$1;->val$cityId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2$1;->this$1:Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;

    iget-object v0, v0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2$1;->val$cityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2$1;->this$1:Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;

    iget-object v0, v0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    return-void
.end method
