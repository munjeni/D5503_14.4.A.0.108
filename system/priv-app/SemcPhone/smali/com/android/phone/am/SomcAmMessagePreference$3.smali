.class Lcom/android/phone/am/SomcAmMessagePreference$3;
.super Ljava/lang/Object;
.source "SomcAmMessagePreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmMessagePreference;->setAudioSource(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmMessagePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmMessagePreference;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/phone/am/SomcAmMessagePreference$3;->this$0:Lcom/android/phone/am/SomcAmMessagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 279
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "SomcAmMessagePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called onError() what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference$3;->this$0:Lcom/android/phone/am/SomcAmMessagePreference;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmMessagePreference;->setOnError()V

    .line 283
    const/4 v0, 0x1

    return v0
.end method
