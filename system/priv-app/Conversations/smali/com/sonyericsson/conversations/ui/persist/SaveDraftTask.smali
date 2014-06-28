.class public Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;
.super Ljava/lang/Object;
.source "SaveDraftTask.java"


# static fields
.field public static final NO_POPUP:Z = false

.field public static final SHOW_POPUP:Z = true

.field private static final TAG:Ljava/lang/String; = "SaveDraftTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/sonyericsson/conversations/model/Conversation;

.field private mMessage:Lcom/sonyericsson/conversations/model/Message;

.field private mPopupToast:Z

.field private mRecipientsChanged:Z

.field private mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Conversation;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p3, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "recipientsChanged"    # Z
    .param p6, "popupToast"    # Z

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 47
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mSubject:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 62
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mSubject:Ljava/lang/String;

    .line 63
    iput-boolean p5, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mRecipientsChanged:Z

    .line 64
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 65
    iput-boolean p6, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mPopupToast:Z

    .line 66
    return-void
.end method

.method private checkImagesInSlideshowModel(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 5
    .param p1, "slideshowModel"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 87
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 89
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    const-string v3, "file"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    const/4 v3, 0x0

    .line 95
    .end local v1    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private saveDraft(Landroid/content/Context;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    move-object/from16 v17, v0

    .line 108
    .local v17, "message":Lcom/sonyericsson/conversations/model/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v23

    .line 109
    .local v23, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 110
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(Landroid/content/Context;Ljava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 113
    :cond_0
    if-eqz v17, :cond_1

    if-eqz p1, :cond_1

    .line 114
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_9

    .line 118
    :try_start_0
    move-object/from16 v0, v17

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    move-object/from16 v19, v0

    .line 119
    .local v19, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v28

    .line 125
    .local v28, "slideshow":Lcom/android/mms/model/SlideshowModel;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->checkImagesInSlideshowModel(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mPopupToast:Z

    .line 239
    .end local v19    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v28    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_1
    :goto_0
    return-void

    .line 132
    .restart local v19    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .restart local v28    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v25

    .line 133
    .local v25, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v18

    .line 134
    .local v18, "messageUri":Landroid/net/Uri;
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v24

    .line 135
    .local v24, "pb":Lcom/google/android/mms/pdu/PduBody;
    new-instance v27, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct/range {v27 .. v27}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 137
    .local v27, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v23

    .line 138
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v21

    .line 140
    .local v21, "nrDests":I
    if-lez v21, :cond_5

    .line 141
    move/from16 v0, v21

    new-array v14, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 145
    .local v14, "encodedAddresses":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v15, v0, :cond_4

    .line 149
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sonyericsson/conversations/model/Participant;

    .line 150
    .local v22, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "address":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 152
    invoke-static {v5}, Lcom/sonyericsson/conversations/util/TextUtil;->removeRedundantChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    :cond_3
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v14, v15

    .line 145
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 157
    .end local v5    # "address":Ljava/lang/String;
    .end local v22    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_4
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 160
    .end local v14    # "encodedAddresses":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "i":I
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 161
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 162
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/conversations/model/MmsMessage;->getRawPriority()I

    move-result v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mSubject:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 165
    .local v30, "subject":Ljava/lang/String;
    if-eqz v30, :cond_6

    .line 168
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v30

    invoke-direct {v3, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 171
    :cond_6
    if-eqz v18, :cond_8

    .line 176
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    .line 178
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/conversations/model/Message;->isStored()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 179
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/conversations/model/Message;->delete()V

    .line 182
    :cond_7
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/Message;->setUri(Landroid/net/Uri;)V

    .line 189
    :goto_2
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 191
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->clearResizedImages(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 192
    .end local v18    # "messageUri":Landroid/net/Uri;
    .end local v19    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v21    # "nrDests":I
    .end local v24    # "pb":Lcom/google/android/mms/pdu/PduBody;
    .end local v25    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .end local v27    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .end local v28    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    .end local v30    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 195
    .local v16, "me":Lcom/google/android/mms/MmsException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mPopupToast:Z

    goto/16 :goto_0

    .line 185
    .end local v16    # "me":Lcom/google/android/mms/MmsException;
    .restart local v18    # "messageUri":Landroid/net/Uri;
    .restart local v19    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .restart local v21    # "nrDests":I
    .restart local v24    # "pb":Lcom/google/android/mms/pdu/PduBody;
    .restart local v25    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .restart local v27    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .restart local v28    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    .restart local v30    # "subject":Ljava/lang/String;
    :cond_8
    :try_start_1
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    .line 186
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/Message;->setUri(Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 197
    .end local v18    # "messageUri":Landroid/net/Uri;
    .end local v19    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v21    # "nrDests":I
    .end local v24    # "pb":Lcom/google/android/mms/pdu/PduBody;
    .end local v25    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .end local v27    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .end local v28    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    .end local v30    # "subject":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v3, :cond_1

    move-object/from16 v29, v17

    .line 200
    check-cast v29, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 202
    .local v29, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    invoke-virtual/range {v29 .. v29}, Lcom/sonyericsson/conversations/model/SmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v13, 0x1

    .line 207
    .local v13, "draftExists":Z
    :goto_3
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v2

    .line 209
    .local v2, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v26, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v23

    .line 212
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v21

    .line 214
    .restart local v21    # "nrDests":I
    if-lez v21, :cond_b

    .line 215
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/4 v15, 0x1

    .restart local v15    # "i":I
    :goto_4
    move/from16 v0, v21

    if-ge v15, v0, :cond_b

    .line 218
    const/16 v3, 0x3b

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 202
    .end local v2    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .end local v13    # "draftExists":Z
    .end local v15    # "i":I
    .end local v21    # "nrDests":I
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    const/4 v13, 0x0

    goto :goto_3

    .line 222
    .restart local v2    # "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    .restart local v13    # "draftExists":Z
    .restart local v21    # "nrDests":I
    .restart local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    .restart local v5    # "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/provider/TelephonyExtra$SmsExtra;->MULTIPLE_DRAFTS_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v11

    invoke-interface/range {v2 .. v12}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v20

    .line 228
    .local v20, "newMessageUri":Landroid/net/Uri;
    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mRecipientsChanged:Z

    if-eqz v3, :cond_d

    .line 232
    :cond_c
    invoke-virtual/range {v29 .. v29}, Lcom/sonyericsson/conversations/model/Message;->delete()V

    .line 235
    :cond_d
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/Message;->setUri(Landroid/net/Uri;)V

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->updateSmsPriority(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method private updateSmsPriority(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 246
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 247
    .local v1, "priorityValues":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getRawPriority()I

    move-result v0

    .line 248
    .local v0, "priority":I
    const-string v2, "semc_message_priority"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public needToPopupToast()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mPopupToast:Z

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;->saveDraft(Landroid/content/Context;)V

    .line 75
    return-void
.end method
