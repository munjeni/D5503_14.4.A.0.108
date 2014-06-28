.class Lcom/android/phone/Constants$NumberConversionInfo;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberConversionInfo"
.end annotation


# instance fields
.field final convertedNumber:Ljava/lang/String;

.field final sourceNumberArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "numberArray"    # [Ljava/lang/String;
    .param p2, "converted"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/phone/Constants$NumberConversionInfo;->sourceNumberArray:[Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/android/phone/Constants$NumberConversionInfo;->convertedNumber:Ljava/lang/String;

    .line 148
    return-void
.end method
