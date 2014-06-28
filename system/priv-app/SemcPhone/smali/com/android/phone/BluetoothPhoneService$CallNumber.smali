.class Lcom/android/phone/BluetoothPhoneService$CallNumber;
.super Ljava/lang/Object;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallNumber"
.end annotation


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;I)V
    .locals 1
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$CallNumber;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;

    .line 455
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I

    .line 458
    iput-object p2, p0, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;

    .line 459
    iput p3, p0, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I

    .line 460
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;ILcom/android/phone/BluetoothPhoneService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/BluetoothPhoneService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/phone/BluetoothPhoneService$1;

    .prologue
    .line 452
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothPhoneService$CallNumber;-><init>(Lcom/android/phone/BluetoothPhoneService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothPhoneService$CallNumber;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .prologue
    .line 452
    iget v0, p0, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothPhoneService$CallNumber;Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothPhoneService$CallNumber;
    .param p1, "x1"    # Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothPhoneService$CallNumber;->equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z

    move-result v0

    return v0
.end method

.method private equalTo(Lcom/android/phone/BluetoothPhoneService$CallNumber;)Z
    .locals 3
    .param p1, "callNumber"    # Lcom/android/phone/BluetoothPhoneService$CallNumber;

    .prologue
    const/4 v0, 0x0

    .line 464
    iget v1, p0, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I

    iget v2, p1, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mType:I

    if-eq v1, v2, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/phone/BluetoothPhoneService$CallNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 467
    const/4 v0, 0x1

    goto :goto_0
.end method
