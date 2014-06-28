.class Lcom/android/phone/am/SomcAmGreetingPreference$1;
.super Ljava/lang/Object;
.source "SomcAmGreetingPreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmGreetingPreference;->setAudioSource(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmGreetingPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmGreetingPreference;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/phone/am/SomcAmGreetingPreference$1;->this$0:Lcom/android/phone/am/SomcAmGreetingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingPreference$1;->this$0:Lcom/android/phone/am/SomcAmGreetingPreference;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmMessagePreference;->setOnCompletion()V

    .line 141
    return-void
.end method
