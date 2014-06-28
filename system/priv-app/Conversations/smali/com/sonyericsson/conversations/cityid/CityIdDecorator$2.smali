.class Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;
.super Ljava/lang/Object;
.source "CityIdDecorator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/cityid/CityIdDecorator;->setCityId(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Conversation;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/cityid/CityIdDecorator;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversation:Lcom/sonyericsson/conversations/model/Conversation;

.field final synthetic val$p:Lcom/sonyericsson/conversations/model/Participant;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/cityid/CityIdDecorator;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;Lcom/sonyericsson/conversations/model/Conversation;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->this$0:Lcom/sonyericsson/conversations/cityid/CityIdDecorator;

    iput-object p2, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$p:Lcom/sonyericsson/conversations/model/Participant;

    iput-object p4, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$conversation:Lcom/sonyericsson/conversations/model/Conversation;

    iput-object p5, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$p:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/cityid/CityIdHelper;->getCityIdInfo(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "cityId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$conversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/model/Conversation;->setCityId(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$conversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;->val$textView:Landroid/widget/TextView;

    new-instance v2, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2$1;-><init>(Lcom/sonyericsson/conversations/cityid/CityIdDecorator$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 162
    :cond_0
    return-void
.end method
