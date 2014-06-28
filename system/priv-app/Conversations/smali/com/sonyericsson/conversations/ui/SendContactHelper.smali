.class public Lcom/sonyericsson/conversations/ui/SendContactHelper;
.super Ljava/lang/Object;
.source "SendContactHelper.java"


# static fields
.field public static final BUNDLE_ERROR_CODE:Ljava/lang/String; = "sendContact_error_code"

.field public static final BUNDLE_VCARD_URI:Ljava/lang/String; = "sendContact_vcard_uri"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final COMMA_SPACE:Ljava/lang/String; = ", "

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final HYPHEN_SPACE:Ljava/lang/String; = " - "

.field private static final PROJECTION_CONTACT_MMS:[Ljava/lang/String;

.field private static final PROJECTION_CONTACT_SMS:[Ljava/lang/String;

.field private static final SD_CONTACTS_PATH:Ljava/lang/String; = "/System/PIM/"

.field private static final TAG:Ljava/lang/String; = "SendContactHelper"

.field private static final VCARD_FILE_NAME:Ljava/lang/String; = "send_contacts.vcf"

.field private static final VCARD_TYPE:Ljava/lang/String; = "vcard_type"

.field private static final VCARD_VALUE_DEFAULT:Ljava/lang/String; = "default"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mimetype"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/conversations/ui/SendContactHelper;->PROJECTION_CONTACT_SMS:[Ljava/lang/String;

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/conversations/ui/SendContactHelper;->PROJECTION_CONTACT_MMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/StringBuilder;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "subLabel"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 632
    if-eqz p0, :cond_3

    if-eqz p3, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 633
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_0
    if-eqz p1, :cond_2

    .line 638
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    if-eqz p2, :cond_1

    .line 640
    const-string v0, " - "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_1
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_2
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_3
    return-void
.end method

.method private static appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "info"    # Ljava/lang/StringBuilder;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "subLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 606
    const-string v3, ""

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 607
    const-string v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_0
    if-eqz p1, :cond_2

    .line 610
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    if-eqz p2, :cond_1

    .line 612
    const-string v3, " - "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_1
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .local v1, "sbValues":Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 620
    .local v2, "value":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 621
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 625
    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 627
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sbValues":Ljava/lang/StringBuilder;
    :cond_5
    return-void
.end method

.method private static compose(Landroid/content/Context;Ljava/io/OutputStream;[J)Z
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "contactIds"    # [J

    .prologue
    .line 761
    const/16 v22, 0x0

    .line 762
    .local v22, "result":Z
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v3, v0

    if-gtz v3, :cond_1

    :cond_0
    move/from16 v23, v22

    .line 834
    .end local v22    # "result":Z
    .local v23, "result":I
    :goto_0
    return v23

    .line 766
    .end local v23    # "result":I
    .restart local v22    # "result":Z
    :cond_1
    const/4 v11, 0x0

    .line 768
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .local v24, "selection":Ljava/lang/StringBuilder;
    const-string v3, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v3, " IN ("

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const-wide/16 v25, 0x0

    .line 773
    .local v25, "selfContactId":J
    const/16 v17, 0x0

    .line 774
    .local v17, "isSelfPicked":Z
    move-object/from16 v8, p2

    .local v8, "arr$":[J
    array-length v0, v8

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    move/from16 v0, v18

    if-ge v13, v0, :cond_3

    aget-wide v14, v8, v13

    .line 775
    .local v14, "id":J
    if-nez v17, :cond_2

    invoke-static {v14, v15}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 776
    const/16 v17, 0x1

    .line 777
    move-wide/from16 v25, v14

    .line 779
    :cond_2
    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 780
    const-string v3, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 782
    .end local v14    # "id":J
    :cond_3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 783
    const-string v3, ")"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 786
    .local v10, "contactsUri":Landroid/net/Uri$Builder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 787
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v3, 0x400

    new-array v9, v3, [B

    .line 789
    .local v9, "buff":[B
    if-eqz v17, :cond_4

    .line 790
    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v28

    .line 792
    .local v28, "selfVcardUri":Landroid/net/Uri$Builder;
    const-string v3, "request_header"

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 793
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v27

    .line 794
    .local v27, "selfInputsStream":Ljava/io/InputStream;
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v9, v0, v1}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->copyStream([BLjava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v3

    if-lez v3, :cond_4

    .line 795
    const/16 v22, 0x1

    .line 799
    .end local v27    # "selfInputsStream":Ljava/io/InputStream;
    .end local v28    # "selfVcardUri":Landroid/net/Uri$Builder;
    :cond_4
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/ui/SendContactHelper;->PROJECTION_CONTACT_MMS:[Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 802
    if-eqz v11, :cond_9

    .line 803
    const-string v3, "lookup"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 804
    .local v19, "lookupClmn":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 806
    .local v20, "lookupKeys":Ljava/lang/StringBuilder;
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 807
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-interface {v11}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-nez v3, :cond_6

    .line 809
    const-string v3, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 825
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "arr$":[J
    .end local v9    # "buff":[B
    .end local v10    # "contactsUri":Landroid/net/Uri$Builder;
    .end local v13    # "i$":I
    .end local v17    # "isSelfPicked":Z
    .end local v18    # "len$":I
    .end local v19    # "lookupClmn":I
    .end local v20    # "lookupKeys":Ljava/lang/StringBuilder;
    .end local v24    # "selection":Ljava/lang/StringBuilder;
    .end local v25    # "selfContactId":J
    :catch_0
    move-exception v12

    .line 826
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    if-eqz v11, :cond_5

    .line 831
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    move/from16 v23, v22

    .line 834
    .restart local v23    # "result":I
    goto/16 :goto_0

    .line 812
    .end local v23    # "result":I
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "arr$":[J
    .restart local v9    # "buff":[B
    .restart local v10    # "contactsUri":Landroid/net/Uri$Builder;
    .restart local v13    # "i$":I
    .restart local v17    # "isSelfPicked":Z
    .restart local v18    # "len$":I
    .restart local v19    # "lookupClmn":I
    .restart local v20    # "lookupKeys":Ljava/lang/StringBuilder;
    .restart local v24    # "selection":Ljava/lang/StringBuilder;
    .restart local v25    # "selfContactId":J
    :cond_6
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService(Landroid/content/Context;)Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/proxy/ProxyService;->getContactsContractProxy()Lcom/sonymobile/conversations/proxy/IContactsContractProxy;

    move-result-object v21

    .line 813
    .local v21, "proxy":Lcom/sonymobile/conversations/proxy/IContactsContractProxy;
    invoke-interface/range {v21 .. v21}, Lcom/sonymobile/conversations/proxy/IContactsContractProxy;->getContentMultiVCardUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v29

    .line 814
    .local v29, "vcardUri":Landroid/net/Uri$Builder;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 815
    const-string v3, "vcard_type"

    const-string v4, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 816
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 817
    .local v16, "is":Ljava/io/InputStream;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v9, v0, v1}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->copyStream([BLjava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v3

    if-lez v3, :cond_7

    .line 818
    const/16 v22, 0x1

    .line 821
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 827
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "arr$":[J
    .end local v9    # "buff":[B
    .end local v10    # "contactsUri":Landroid/net/Uri$Builder;
    .end local v13    # "i$":I
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "isSelfPicked":Z
    .end local v18    # "len$":I
    .end local v19    # "lookupClmn":I
    .end local v20    # "lookupKeys":Ljava/lang/StringBuilder;
    .end local v21    # "proxy":Lcom/sonymobile/conversations/proxy/IContactsContractProxy;
    .end local v24    # "selection":Ljava/lang/StringBuilder;
    .end local v25    # "selfContactId":J
    .end local v29    # "vcardUri":Landroid/net/Uri$Builder;
    :catch_1
    move-exception v12

    .line 828
    .local v12, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 830
    if-eqz v11, :cond_5

    goto :goto_3

    .end local v12    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_8

    .line 831
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_8
    throw v3

    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v8    # "arr$":[J
    .restart local v9    # "buff":[B
    .restart local v10    # "contactsUri":Landroid/net/Uri$Builder;
    .restart local v13    # "i$":I
    .restart local v17    # "isSelfPicked":Z
    .restart local v18    # "len$":I
    .restart local v24    # "selection":Ljava/lang/StringBuilder;
    .restart local v25    # "selfContactId":J
    :cond_9
    if-eqz v11, :cond_5

    goto :goto_3
.end method

.method private static composeVcard(Landroid/content/Context;[JLjava/lang/StringBuilder;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactIds"    # [J
    .param p2, "vcardPath"    # Ljava/lang/StringBuilder;

    .prologue
    .line 680
    const/4 v4, 0x0

    .line 682
    .local v4, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/System/PIM/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, "fileDirectory":Ljava/lang/String;
    const/4 v6, 0x0

    .line 686
    .local v6, "targetDirectoryOk":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 688
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 689
    const/4 v6, 0x1

    .line 698
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 699
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "send_contacts.vcf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 701
    .local v3, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 704
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 705
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_1

    .line 706
    const-string v7, "SendContactHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "delete error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_1
    invoke-static {p0, v3, p1}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->encodeVCard(Landroid/content/Context;Ljava/lang/String;[J)Z

    move-result v5

    .line 713
    .local v5, "ret":Z
    if-eqz v5, :cond_3

    .line 714
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v5    # "ret":Z
    :goto_1
    return v4

    .line 693
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 694
    const/4 v6, 0x1

    goto :goto_0

    .line 716
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v5    # "ret":Z
    :cond_3
    const v4, 0x7f07016a

    goto :goto_1

    .line 720
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v5    # "ret":Z
    :cond_4
    const v4, 0x7f070169

    goto :goto_1
.end method

.method private static copyStream([BLjava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "buff"    # [B
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, "copiedLength":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v0

    .line 857
    .end local v0    # "copiedLength":I
    .local v1, "copiedLength":I
    :goto_0
    return v1

    .line 843
    .end local v1    # "copiedLength":I
    .restart local v0    # "copiedLength":I
    :cond_1
    const/4 v2, 0x0

    .line 845
    .local v2, "sz":I
    :cond_2
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 846
    if-lez v2, :cond_3

    .line 847
    const/4 v3, 0x0

    invoke-virtual {p2, p0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 848
    add-int/2addr v0, v2

    .line 850
    :cond_3
    if-gtz v2, :cond_2

    .line 851
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    if-eqz p1, :cond_4

    .line 854
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_4
    move v1, v0

    .line 857
    .end local v0    # "copiedLength":I
    .restart local v1    # "copiedLength":I
    goto :goto_0

    .line 853
    .end local v1    # "copiedLength":I
    .restart local v0    # "copiedLength":I
    :catchall_0
    move-exception v3

    if-eqz p1, :cond_5

    .line 854
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 853
    :cond_5
    throw v3
.end method

.method private static encodeVCard(Landroid/content/Context;Ljava/lang/String;[J)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contactIds"    # [J

    .prologue
    .line 727
    const/4 v4, 0x0

    .line 728
    .local v4, "result":Z
    const/4 v2, 0x0

    .line 731
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p0, v3, p2}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->compose(Landroid/content/Context;Ljava/io/OutputStream;[J)Z

    move-result v4

    .line 735
    if-nez v4, :cond_1

    .line 736
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    .local v1, "exportingFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 738
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 739
    new-instance v5, Ljava/io/IOException;

    const-string v6, "exportingFile delete failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 743
    .end local v1    # "exportingFile":Ljava/io/File;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 744
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    if-eqz v2, :cond_0

    .line 750
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 757
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    return v4

    .line 748
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    if-eqz v3, :cond_2

    .line 750
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_2
    move-object v2, v3

    .line 755
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_1

    .line 745
    :catch_1
    move-exception v0

    .line 746
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 748
    if-eqz v2, :cond_0

    .line 750
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 751
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_1

    .line 748
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_3

    .line 750
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 748
    :cond_3
    :goto_5
    throw v5

    .line 751
    :catch_3
    move-exception v6

    goto :goto_5

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v5

    goto :goto_2

    .line 748
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 745
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 743
    :catch_6
    move-exception v0

    goto :goto_0
.end method

.method private static getContactInfo(Landroid/content/Context;Lcom/sonyericsson/conversations/model/SmsContact;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsContact"    # Lcom/sonyericsson/conversations/model/SmsContact;

    .prologue
    const v13, 0x7f070161

    const v12, 0x7f070163

    const v11, 0x7f070164

    const v10, 0x7f070165

    const/4 v9, 0x0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v0, "contactInfo":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v9, v9, v7}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07014a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "phoneLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneHomes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070162

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneMobiles()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneWorks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07014b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneWorkfaxs()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07014c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneHomefaxs()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07014d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhonePagers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneOthers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPhoneCustoms()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v5, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07014e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "emailLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEmailHomes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEmailWorks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEmailOthers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070162

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEmailMobiles()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEmailCustoms()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v1, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07014f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "imLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070150

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImGoogletalks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070151

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImAims()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070152

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImMsns()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070153

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImYahoos()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070154

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImSkypes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070155

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImQqs()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070156

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImIcqs()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070157

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImJabbers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getImCustoms()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v3, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 504
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070158

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, "structuredpostalLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPostalHomes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 512
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPostalWorks()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 518
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPostalOthers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getPostalCustoms()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070159

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "organizationLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getOrganizationWork()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v4, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getOrganizationOther()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v4, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getOrganizationCustom()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v4, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getBirthday()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getAnniversarys()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 563
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, "eventLabel":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEventOthers()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v2, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getEventCustoms()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v2, v7, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 578
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getNotes()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getNickname()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07015f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getWebsites()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 593
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070160

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/SmsContact;->getInternetcall()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v7, v9, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->appendContactInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getContactsInfo(Landroid/content/Context;[JLjava/lang/StringBuilder;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactIds"    # [J
    .param p2, "contactsInfo"    # Ljava/lang/StringBuilder;

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->loadContact(Landroid/content/Context;[J)Ljava/util/ArrayList;

    move-result-object v3

    .line 83
    .local v3, "smsContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/SmsContact;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/SmsContact;

    .line 84
    .local v2, "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->getContactInfo(Landroid/content/Context;Lcom/sonyericsson/conversations/model/SmsContact;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "contactInfo":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    const-string v4, "\r\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    .end local v0    # "contactInfo":Ljava/lang/String;
    .end local v2    # "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    :cond_1
    return-void
.end method

.method public static getVcardUri(Landroid/content/Context;[JI)Landroid/os/Bundle;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactIds"    # [J
    .param p2, "curMMSSize"    # I

    .prologue
    .line 651
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 652
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 653
    .local v9, "vCardUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 654
    .local v6, "result":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .local v8, "vCardFilename":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v8}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->composeVcard(Landroid/content/Context;[JLjava/lang/StringBuilder;)I

    move-result v6

    .line 656
    if-nez v6, :cond_1

    .line 657
    new-instance v1, Ljava/io/File;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 660
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v10

    int-to-long v4, v10

    .line 661
    .local v4, "mmsMaxSize":J
    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/util/MediaUtil;->getUriFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    .line 663
    .local v2, "fileSize":J
    int-to-long v10, p2

    add-long/2addr v10, v2

    cmp-long v10, v10, v4

    if-gtz v10, :cond_0

    invoke-static {p0, v7}, Lcom/sonyericsson/conversations/util/VCardUtil;->isMultipleContactsVCard(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 665
    :cond_0
    const v6, 0x7f0700d9

    .line 674
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileSize":J
    .end local v4    # "mmsMaxSize":J
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    const-string v10, "sendContact_error_code"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 675
    const-string v10, "sendContact_vcard_uri"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 676
    return-object v0

    .line 667
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileSize":J
    .restart local v4    # "mmsMaxSize":J
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v10, 0x1

    invoke-static {p0, v7, v10}, Lcom/sonyericsson/conversations/util/VCardUtil;->createVCardFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v7

    .line 668
    if-eqz v7, :cond_1

    .line 669
    move-object v9, v7

    goto :goto_0
.end method

.method private static loadContact(Landroid/content/Context;[J)Ljava/util/ArrayList;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactIds"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/SmsContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v18, "smsContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/SmsContact;>;"
    move-object/from16 v8, p1

    .local v8, "arr$":[J
    array-length v14, v8

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v14, :cond_0

    aget-wide v11, v8, v10

    .line 96
    .local v11, "id":J
    new-instance v17, Lcom/sonyericsson/conversations/model/SmsContact;

    invoke-direct/range {v17 .. v17}, Lcom/sonyericsson/conversations/model/SmsContact;-><init>()V

    .line 97
    .local v17, "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Lcom/sonyericsson/conversations/model/SmsContact;->setContactId(J)V

    .line 98
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 101
    .end local v11    # "id":J
    .end local v17    # "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 103
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v15, "selection":Ljava/lang/StringBuilder;
    const-string v3, "contact_id"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v3, " IN ("

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/4 v13, 0x0

    .line 108
    .local v13, "isSelfPicked":Z
    move-object/from16 v8, p1

    array-length v14, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v14, :cond_2

    aget-wide v11, v8, v10

    .line 109
    .restart local v11    # "id":J
    if-nez v13, :cond_1

    invoke-static {v11, v12}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    const/4 v13, 0x1

    .line 112
    :cond_1
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    const-string v3, ","

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 115
    .end local v11    # "id":J
    :cond_2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 116
    const-string v3, ")"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonyericsson/conversations/ui/SendContactHelper;->PROJECTION_CONTACT_SMS:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 119
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 121
    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->updateSmsContactListWithCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-eqz v9, :cond_3

    .line 124
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_3
    if-eqz v13, :cond_4

    .line 130
    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "data"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/conversations/ui/SendContactHelper;->PROJECTION_CONTACT_SMS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 133
    .local v16, "selfCursor":Landroid/database/Cursor;
    if-eqz v16, :cond_4

    .line 135
    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->updateSmsContactListWithCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    if-eqz v16, :cond_4

    .line 138
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 144
    .end local v16    # "selfCursor":Landroid/database/Cursor;
    :cond_4
    return-object v18

    .line 123
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_5

    .line 124
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_5
    throw v3

    .line 137
    .restart local v16    # "selfCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    if-eqz v16, :cond_6

    .line 138
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_6
    throw v3
.end method

.method private static updateSmsContactListWithCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 17
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/SmsContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "smsContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/SmsContact;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 150
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 151
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "mimeType":Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "data":Ljava/lang/String;
    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 155
    .local v1, "contactId":J
    const/4 v14, 0x0

    .line 156
    .local v14, "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/conversations/model/SmsContact;

    .line 157
    .local v13, "sc":Lcom/sonyericsson/conversations/model/SmsContact;
    invoke-virtual {v13}, Lcom/sonyericsson/conversations/model/SmsContact;->getContactId()J

    move-result-wide v15

    cmp-long v15, v1, v15

    if-nez v15, :cond_1

    .line 158
    move-object v14, v13

    goto :goto_1

    .line 161
    .end local v13    # "sc":Lcom/sonyericsson/conversations/model/SmsContact;
    :cond_2
    if-eqz v14, :cond_0

    .line 162
    const-string v15, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 163
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 165
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 166
    .local v11, "phoneType":I
    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 196
    :pswitch_0
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneCustoms(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneHomes(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_2
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneMobiles(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_3
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneWorks(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :pswitch_4
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneWorkfaxs(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_5
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneHomefaxs(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_6
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhonePagers(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_7
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPhoneOthers(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v11    # "phoneType":I
    :cond_4
    const-string v15, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 203
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 204
    .local v4, "emailType":I
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 222
    :pswitch_8
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addEmailCustoms(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :pswitch_9
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addEmailHomes(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :pswitch_a
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addEmailWorks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :pswitch_b
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addEmailOthers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :pswitch_c
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addEmailMobiles(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v4    # "emailType":I
    :cond_5
    const-string v15, "vnd.android.cursor.item/im"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 229
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 230
    .local v7, "imType":I
    packed-switch v7, :pswitch_data_2

    goto/16 :goto_0

    .line 264
    :pswitch_d
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addImCustoms(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :pswitch_e
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addImGoogletalks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :pswitch_f
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addImAims(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :pswitch_10
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addImMsns(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :pswitch_11
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addImYahoos(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :pswitch_12
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addImSkypes(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :pswitch_13
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addImQqs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :pswitch_14
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addImIcqs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :pswitch_15
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addImJabbers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    .end local v7    # "imType":I
    :cond_6
    const-string v15, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 272
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 273
    .local v12, "postalType":I
    packed-switch v12, :pswitch_data_3

    goto/16 :goto_0

    .line 287
    :pswitch_16
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPostalCustoms(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :pswitch_17
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPostalHomes(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :pswitch_18
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPostalWorks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :pswitch_19
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addPostalOthers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    .end local v12    # "postalType":I
    :cond_7
    const-string v15, "vnd.android.cursor.item/organization"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 295
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 297
    .local v10, "organizationType":I
    const/4 v8, 0x0

    .line 299
    .local v8, "jobTitle":Ljava/lang/String;
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_8

    .line 300
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 301
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_9

    const-string v15, ""

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    :cond_8
    packed-switch v10, :pswitch_data_4

    goto/16 :goto_0

    .line 314
    :pswitch_1a
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->setOrganizationCustom(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    :cond_9
    const-string v15, " "

    goto :goto_2

    .line 306
    :pswitch_1b
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->setOrganizationWork(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :pswitch_1c
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->setOrganizationOther(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    .end local v8    # "jobTitle":Ljava/lang/String;
    .end local v10    # "organizationType":I
    :cond_a
    const-string v15, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 322
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 323
    .local v5, "eventType":I
    packed-switch v5, :pswitch_data_5

    goto/16 :goto_0

    .line 337
    :pswitch_1d
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addEventCustoms(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :pswitch_1e
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->setBirthday(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :pswitch_1f
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addAnniversarys(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :pswitch_20
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addEventOthers(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 344
    .end local v5    # "eventType":I
    :cond_b
    const-string v15, "vnd.android.cursor.item/note"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 345
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->setNotes(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 346
    :cond_c
    const-string v15, "vnd.android.cursor.item/nickname"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 347
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->setNickname(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    :cond_d
    const-string v15, "vnd.android.cursor.item/website"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 349
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->addWebsites(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_e
    const-string v15, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 351
    invoke-virtual {v14, v3}, Lcom/sonyericsson/conversations/model/SmsContact;->setInternetcall(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    .end local v1    # "contactId":J
    .end local v3    # "data":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v14    # "smsContact":Lcom/sonyericsson/conversations/model/SmsContact;
    :cond_f
    return-void

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 204
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 230
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_e
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 273
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 304
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 323
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1f
        :pswitch_20
        :pswitch_1e
    .end packed-switch
.end method
