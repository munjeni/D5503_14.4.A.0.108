.class public Lcom/android/phone/am/SomcAmMessage;
.super Ljava/lang/Object;
.source "SomcAmMessage.java"


# instance fields
.field public final mDate:J

.field public final mDuration:J

.field public final mIsRead:Z

.field public final mName:Ljava/lang/String;

.field public final mNumber:Ljava/lang/String;

.field public final mNumberPresentation:I

.field public final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;I)V
    .locals 0
    .param p1, "date"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "duration"    # J
    .param p7, "isRead"    # Z
    .param p8, "uri"    # Ljava/lang/String;
    .param p9, "numberPresentation"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/android/phone/am/SomcAmMessage;->mDate:J

    .line 20
    iput-object p3, p0, Lcom/android/phone/am/SomcAmMessage;->mName:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/android/phone/am/SomcAmMessage;->mNumber:Ljava/lang/String;

    .line 22
    iput-wide p5, p0, Lcom/android/phone/am/SomcAmMessage;->mDuration:J

    .line 23
    iput-boolean p7, p0, Lcom/android/phone/am/SomcAmMessage;->mIsRead:Z

    .line 24
    iput-object p8, p0, Lcom/android/phone/am/SomcAmMessage;->mUri:Ljava/lang/String;

    .line 25
    iput p9, p0, Lcom/android/phone/am/SomcAmMessage;->mNumberPresentation:I

    .line 26
    return-void
.end method
