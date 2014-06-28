.class Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
.super Lcom/google/android/mms/pdu/PduHeaders;
.source "SomcPduPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/data/SomcPduPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SomcPduHeaders"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1604
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 1605
    return-void
.end method


# virtual methods
.method appendEncodedStringValueEx(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    .locals 0
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p2, "field"    # I

    .prologue
    .line 1612
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 1613
    return-void
.end method

.method getOctetEx(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 1628
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method setEncodedStringValueEx(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    .locals 0
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p2, "field"    # I

    .prologue
    .line 1608
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 1609
    return-void
.end method

.method setLongIntegerEx(JI)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "field"    # I

    .prologue
    .line 1620
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 1621
    return-void
.end method

.method setOctetEx(II)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "field"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 1624
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 1625
    return-void
.end method

.method setTextStringEx([BI)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "field"    # I

    .prologue
    .line 1616
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 1617
    return-void
.end method
