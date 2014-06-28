.class Lcom/android/phone/am/SomcAmMessagePreference$1;
.super Ljava/lang/Object;
.source "SomcAmMessagePreference.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/am/SomcAmMessagePreference;
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
    .line 174
    iput-object p1, p0, Lcom/android/phone/am/SomcAmMessagePreference$1;->this$0:Lcom/android/phone/am/SomcAmMessagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 176
    packed-switch p1, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference$1;->this$0:Lcom/android/phone/am/SomcAmMessagePreference;

    # getter for: Lcom/android/phone/am/SomcAmMessagePreference;->mPlaying:Z
    invoke-static {v0}, Lcom/android/phone/am/SomcAmMessagePreference;->access$000(Lcom/android/phone/am/SomcAmMessagePreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/phone/am/SomcAmMessagePreference$1;->this$0:Lcom/android/phone/am/SomcAmMessagePreference;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmMessagePreference;->stopPlaying()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
