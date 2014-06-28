.class public Lcom/sonymobile/superstamina/gateway/NativeConnector;
.super Ljava/lang/Object;
.source "NativeConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;,
        Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;
    }
.end annotation


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-NativeConnector"

.field protected static final SOCKET_NAME:Ljava/lang/String; = "xssm_wakelock_socket"

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private mHandler:Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSocketHandler:Ljava/lang/Runnable;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->mListeners:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/gateway/NativeConnector$1;-><init>(Lcom/sonymobile/superstamina/gateway/NativeConnector;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->mSocketHandler:Ljava/lang/Runnable;

    .line 142
    new-instance v0, Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->mHandler:Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;

    .line 143
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->mSocketHandler:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->mThread:Ljava/lang/Thread;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/gateway/NativeConnector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/NativeConnector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/gateway/NativeConnector;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/gateway/NativeConnector;)Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/gateway/NativeConnector;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->mHandler:Lcom/sonymobile/superstamina/gateway/NativeConnector$CustomHandler;

    return-object v0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 0
    .param p1, "logstring"    # Ljava/lang/String;

    .prologue
    .line 189
    return-void
.end method


# virtual methods
.method public addListener(Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public removeListener(Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/superstamina/gateway/NativeConnector$OnDataReceivedListener;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/superstamina/gateway/NativeConnector;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method
