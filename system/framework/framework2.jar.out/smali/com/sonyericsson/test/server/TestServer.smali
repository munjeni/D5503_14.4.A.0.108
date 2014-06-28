.class public Lcom/sonyericsson/test/server/TestServer;
.super Ljava/lang/Object;
.source "TestServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/test/server/TestServer$ViewCandidate;,
        Lcom/sonyericsson/test/server/TestServer$ViewFilter;
    }
.end annotation


# static fields
.field private static final FINDCMD:Ljava/lang/String; = "FIND"

.field private static sAndroid:Lcom/sonyericsson/test/server/IAndroidProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/sonyericsson/test/server/AndroidProxy;

    invoke-direct {v0}, Lcom/sonyericsson/test/server/AndroidProxy;-><init>()V

    sput-object v0, Lcom/sonyericsson/test/server/TestServer;->sAndroid:Lcom/sonyericsson/test/server/IAndroidProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    return-void
.end method

.method public static dispatchCommand(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;

    .prologue
    .line 53
    sget-object v0, Lcom/sonyericsson/test/server/TestServer;->sAndroid:Lcom/sonyericsson/test/server/IAndroidProxy;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sonyericsson/test/server/TestServer;->dispatchCommand(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/sonyericsson/test/server/IAndroidProxy;)V

    .line 54
    return-void
.end method

.method public static dispatchCommand(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/sonyericsson/test/server/IAndroidProxy;)V
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "clientStream"    # Ljava/io/OutputStream;
    .param p4, "android"    # Lcom/sonyericsson/test/server/IAndroidProxy;

    .prologue
    .line 45
    const-string v0, "FIND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p2, p3, p4}, Lcom/sonyericsson/test/server/TestServer;->findViewInHiearchy(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;Lcom/sonyericsson/test/server/IAndroidProxy;)V

    .line 47
    invoke-static {p3}, Lcom/sonyericsson/test/server/TestServer;->writeLine(Ljava/io/OutputStream;)V

    .line 49
    :cond_0
    return-void
.end method

.method private static findView(Ljava/lang/Object;Lcom/sonyericsson/test/server/TestServer$ViewFilter;Ljava/util/List;Lcom/sonyericsson/test/server/IAndroidProxy;)Z
    .locals 2
    .param p0, "view"    # Ljava/lang/Object;
    .param p1, "filter"    # Lcom/sonyericsson/test/server/TestServer$ViewFilter;
    .param p3, "android"    # Lcom/sonyericsson/test/server/IAndroidProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/test/server/TestServer$ViewFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/test/server/TestServer$ViewCandidate;",
            ">;",
            "Lcom/sonyericsson/test/server/IAndroidProxy;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "viewCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/test/server/TestServer$ViewCandidate;>;"
    invoke-virtual {p1, p0, p3}, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->matches(Ljava/lang/Object;Lcom/sonyericsson/test/server/IAndroidProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;

    invoke-interface {p3, p0}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewLocationOnScreen(Ljava/lang/Object;)[I

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;-><init>(Ljava/lang/Object;[I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findViewInHiearchy(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;Lcom/sonyericsson/test/server/IAndroidProxy;)V
    .locals 5
    .param p0, "view"    # Ljava/lang/Object;
    .param p1, "parameters"    # Ljava/lang/String;
    .param p2, "clientStream"    # Ljava/io/OutputStream;
    .param p3, "android"    # Lcom/sonyericsson/test/server/IAndroidProxy;

    .prologue
    .line 58
    new-instance v0, Lcom/sonyericsson/test/server/TestServer$ViewFilter;

    invoke-direct {v0, p1}, Lcom/sonyericsson/test/server/TestServer$ViewFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "filter":Lcom/sonyericsson/test/server/TestServer$ViewFilter;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, "viewCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/test/server/TestServer$ViewCandidate;>;"
    invoke-static {p0, v0, v2, p3}, Lcom/sonyericsson/test/server/TestServer;->findViewInHiearchy(Ljava/lang/Object;Lcom/sonyericsson/test/server/TestServer$ViewFilter;Ljava/util/List;Lcom/sonyericsson/test/server/IAndroidProxy;)Z

    .line 63
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->anyIndex()Z

    move-result v3

    if-nez v3, :cond_0

    # getter for: Lcom/sonyericsson/test/server/TestServer$ViewFilter;->index:I
    invoke-static {v0}, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->access$000(Lcom/sonyericsson/test/server/TestServer$ViewFilter;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 65
    :cond_0
    invoke-static {v0, v2}, Lcom/sonyericsson/test/server/TestServer;->getViewFromCandidates(Lcom/sonyericsson/test/server/TestServer$ViewFilter;Ljava/util/List;)Lcom/sonyericsson/test/server/TestServer$ViewCandidate;

    move-result-object v1

    .line 66
    .local v1, "matchingView":Lcom/sonyericsson/test/server/TestServer$ViewCandidate;
    invoke-static {v1, p2, p3}, Lcom/sonyericsson/test/server/TestServer;->writeView(Lcom/sonyericsson/test/server/TestServer$ViewCandidate;Ljava/io/OutputStream;Lcom/sonyericsson/test/server/IAndroidProxy;)V

    .line 68
    .end local v1    # "matchingView":Lcom/sonyericsson/test/server/TestServer$ViewCandidate;
    :cond_1
    return-void
.end method

.method private static findViewInHiearchy(Ljava/lang/Object;Lcom/sonyericsson/test/server/TestServer$ViewFilter;Ljava/util/List;Lcom/sonyericsson/test/server/IAndroidProxy;)Z
    .locals 5
    .param p0, "viewGroup"    # Ljava/lang/Object;
    .param p1, "filter"    # Lcom/sonyericsson/test/server/TestServer$ViewFilter;
    .param p3, "android"    # Lcom/sonyericsson/test/server/IAndroidProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/test/server/TestServer$ViewFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/test/server/TestServer$ViewCandidate;",
            ">;",
            "Lcom/sonyericsson/test/server/IAndroidProxy;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "viewCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/test/server/TestServer$ViewCandidate;>;"
    const/4 v1, 0x0

    .line 75
    .local v1, "found":Z
    :try_start_0
    invoke-interface {p3, p0}, Lcom/sonyericsson/test/server/IAndroidProxy;->setContextFromView(Ljava/lang/Object;)V

    .line 77
    invoke-static {p0, p3}, Lcom/sonyericsson/test/server/TestServer;->isViewVisible(Ljava/lang/Object;Lcom/sonyericsson/test/server/IAndroidProxy;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/test/server/TestServer;->findView(Ljava/lang/Object;Lcom/sonyericsson/test/server/TestServer$ViewFilter;Ljava/util/List;Lcom/sonyericsson/test/server/IAndroidProxy;)Z

    move-result v1

    .line 79
    if-nez v1, :cond_0

    .line 80
    invoke-interface {p3, p0}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewChildCount(Ljava/lang/Object;)I

    move-result v3

    .line 81
    .local v3, "nbrChildren":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 82
    invoke-interface {p3, p0, v2}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "child":Ljava/lang/Object;
    invoke-static {v0, p1, p2, p3}, Lcom/sonyericsson/test/server/TestServer;->findViewInHiearchy(Ljava/lang/Object;Lcom/sonyericsson/test/server/TestServer$ViewFilter;Ljava/util/List;Lcom/sonyericsson/test/server/IAndroidProxy;)Z

    move-result v1

    .line 84
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->anyIndex()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    .end local v0    # "child":Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "nbrChildren":I
    :cond_0
    invoke-interface {p3}, Lcom/sonyericsson/test/server/IAndroidProxy;->unsetContext()V

    .line 93
    return v1

    .line 81
    .restart local v0    # "child":Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v3    # "nbrChildren":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "child":Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "nbrChildren":I
    :catchall_0
    move-exception v4

    invoke-interface {p3}, Lcom/sonyericsson/test/server/IAndroidProxy;->unsetContext()V

    throw v4
.end method

.method private static getViewChildren(Ljava/lang/Object;Lcom/sonyericsson/test/server/IAndroidProxy;)Ljava/lang/String;
    .locals 8
    .param p0, "view"    # Ljava/lang/Object;
    .param p1, "android"    # Lcom/sonyericsson/test/server/IAndroidProxy;

    .prologue
    .line 135
    invoke-interface {p1, p0}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewChildCount(Ljava/lang/Object;)I

    move-result v4

    .line 137
    .local v4, "nbrChildren":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    .local v1, "childList":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/test/server/TestServer$ViewCandidate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 140
    invoke-interface {p1, p0, v3}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "child":Ljava/lang/Object;
    new-instance v6, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;

    invoke-interface {p1, v0}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewLocationOnScreen(Ljava/lang/Object;)[I

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;-><init>(Ljava/lang/Object;[I)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "child":Ljava/lang/Object;
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 145
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    .line 146
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;

    .line 147
    .local v0, "child":Lcom/sonyericsson/test/server/TestServer$ViewCandidate;
    if-eqz v3, :cond_1

    .line 148
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_1
    # getter for: Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->view:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->access$100(Lcom/sonyericsson/test/server/TestServer$ViewCandidate;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewSize(Ljava/lang/Object;)[I

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->getCenter([I)[I

    move-result-object v5

    .line 150
    .local v5, "xy":[I
    const/4 v6, 0x0

    aget v6, v5, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 151
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const/4 v6, 0x1

    aget v6, v5, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v0    # "child":Lcom/sonyericsson/test/server/TestServer$ViewCandidate;
    .end local v5    # "xy":[I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getViewFromCandidates(Lcom/sonyericsson/test/server/TestServer$ViewFilter;Ljava/util/List;)Lcom/sonyericsson/test/server/TestServer$ViewCandidate;
    .locals 2
    .param p0, "filter"    # Lcom/sonyericsson/test/server/TestServer$ViewFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/test/server/TestServer$ViewFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/test/server/TestServer$ViewCandidate;",
            ">;)",
            "Lcom/sonyericsson/test/server/TestServer$ViewCandidate;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "viewCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/test/server/TestServer$ViewCandidate;>;"
    const/4 v0, 0x0

    .line 112
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->anyIndex()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 114
    # getter for: Lcom/sonyericsson/test/server/TestServer$ViewFilter;->index:I
    invoke-static {p0}, Lcom/sonyericsson/test/server/TestServer$ViewFilter;->access$000(Lcom/sonyericsson/test/server/TestServer$ViewFilter;)I

    move-result v0

    .line 116
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;

    return-object v1
.end method

.method private static isViewVisible(Ljava/lang/Object;Lcom/sonyericsson/test/server/IAndroidProxy;)Z
    .locals 1
    .param p0, "viewGroup"    # Ljava/lang/Object;
    .param p1, "android"    # Lcom/sonyericsson/test/server/IAndroidProxy;

    .prologue
    .line 97
    invoke-interface {p1, p0}, Lcom/sonyericsson/test/server/IAndroidProxy;->getVisible(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static write(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "clientStream"    # Ljava/io/OutputStream;

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static writeEntry(Ljava/lang/String;ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # I
    .param p2, "clientStream"    # Ljava/io/OutputStream;

    .prologue
    .line 158
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/sonyericsson/test/server/TestServer;->writeEntry(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 159
    return-void
.end method

.method private static writeEntry(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "clientStream"    # Ljava/io/OutputStream;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const-string p1, ""

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sonyericsson/test/server/TestServer;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 165
    return-void
.end method

.method private static writeLine(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "clientStream"    # Ljava/io/OutputStream;

    .prologue
    .line 168
    const-string v0, "\r\n"

    invoke-static {v0, p0}, Lcom/sonyericsson/test/server/TestServer;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 169
    return-void
.end method

.method private static writeView(Lcom/sonyericsson/test/server/TestServer$ViewCandidate;Ljava/io/OutputStream;Lcom/sonyericsson/test/server/IAndroidProxy;)V
    .locals 7
    .param p0, "viewCandidate"    # Lcom/sonyericsson/test/server/TestServer$ViewCandidate;
    .param p1, "clientStream"    # Ljava/io/OutputStream;
    .param p2, "android"    # Lcom/sonyericsson/test/server/IAndroidProxy;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 122
    # getter for: Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->view:Ljava/lang/Object;
    invoke-static {p0}, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->access$100(Lcom/sonyericsson/test/server/TestServer$ViewCandidate;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    .local v2, "view":Ljava/lang/Object;
    invoke-interface {p2, v2}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewChecked(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 124
    .local v0, "checked":I
    :goto_0
    invoke-static {v2, p2}, Lcom/sonyericsson/test/server/TestServer;->getViewChildren(Ljava/lang/Object;Lcom/sonyericsson/test/server/IAndroidProxy;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "childList":Ljava/lang/String;
    invoke-interface {p2, v2}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewSize(Ljava/lang/Object;)[I

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonyericsson/test/server/TestServer$ViewCandidate;->getCenter([I)[I

    move-result-object v3

    .line 127
    .local v3, "xy":[I
    const-string v6, "x"

    aget v5, v3, v5

    invoke-static {v6, v5, p1}, Lcom/sonyericsson/test/server/TestServer;->writeEntry(Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 128
    const-string v5, "y"

    aget v4, v3, v4

    invoke-static {v5, v4, p1}, Lcom/sonyericsson/test/server/TestServer;->writeEntry(Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 129
    const-string v4, "checked"

    invoke-static {v4, v0, p1}, Lcom/sonyericsson/test/server/TestServer;->writeEntry(Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 130
    const-string v4, "children"

    invoke-static {v4, v1, p1}, Lcom/sonyericsson/test/server/TestServer;->writeEntry(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 131
    const-string v4, "text"

    invoke-interface {p2, v2}, Lcom/sonyericsson/test/server/IAndroidProxy;->getViewText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/sonyericsson/test/server/TestServer;->writeEntry(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 132
    return-void

    .end local v0    # "checked":I
    .end local v1    # "childList":Ljava/lang/String;
    .end local v3    # "xy":[I
    :cond_0
    move v0, v5

    .line 123
    goto :goto_0
.end method
