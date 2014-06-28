.class final enum Lcom/android/server/connectivity/VpnNamespace$Cmd$11;
.super Lcom/android/server/connectivity/VpnNamespace$Cmd;
.source "VpnNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/VpnNamespace$Cmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 6
    .param p3, "x0"    # I

    .prologue
    .line 398
    .local p4, "x1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/VpnNamespace$Cmd;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/android/server/connectivity/VpnNamespace$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getReply(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/VpnNamespace$Cmd$11;->getReply(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getReply(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "din"    # Ljava/io/DataInputStream;

    .prologue
    .line 400
    const-string v0, "not a command, you dummy!"

    return-object v0
.end method
