.class public abstract Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
.super Ljava/lang/Object;
.source "ImsPresCapEventListener.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "ImsRcsService:ImsPresCapEventListener"

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->LOG_TAG:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method

.method public static convertHidlStatusCode(I)I
    .locals 2
    .param p0, "uceStatusCode"    # I

    .line 216
    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    .line 217
    return v0

    .line 219
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 220
    return v0

    .line 221
    :cond_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 222
    return v0

    .line 223
    :cond_2
    const/4 v1, 0x3

    if-ne v1, p0, :cond_3

    .line 224
    return v1

    .line 225
    :cond_3
    const/4 v1, 0x5

    if-ne v1, p0, :cond_4

    .line 226
    return v1

    .line 227
    :cond_4
    const/4 v1, 0x2

    if-ne v1, p0, :cond_5

    .line 228
    return v1

    .line 229
    :cond_5
    const/4 v1, 0x6

    if-ne v1, p0, :cond_6

    .line 230
    return v1

    .line 231
    :cond_6
    const/16 v1, 0xa

    if-ne v1, p0, :cond_7

    .line 232
    return v1

    .line 233
    :cond_7
    const/16 v1, 0x8

    if-ne v1, p0, :cond_8

    .line 234
    return v1

    .line 235
    :cond_8
    const/4 v1, 0x7

    if-ne v1, p0, :cond_9

    .line 236
    return v1

    .line 237
    :cond_9
    const/4 v1, 0x4

    if-ne v1, p0, :cond_a

    .line 238
    return v1

    .line 239
    :cond_a
    const/16 v1, 0x9

    if-ne v1, p0, :cond_b

    .line 240
    return v1

    .line 242
    :cond_b
    return v0
.end method

.method private handleCapInfoInternal(JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "userdata"    # J
    .param p3, "subscriptionStatus"    # Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 251
    .local p4, "contactSubsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "UriTerminatedReason":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    iget-object v8, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda12;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p4

    move-object v4, v0

    move-wide v5, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda12;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;Ljava/util/ArrayList;Ljava/util/ArrayList;JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 270
    return-object v0
.end method

.method private handleCapInfoInternal(JLvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;[Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "userdata"    # J
    .param p3, "subscriptionStatus"    # Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;
    .param p4, "contactSubsInfo"    # [Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;",
            "[",
            "Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "UriTerminatedReason":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    iget-object v8, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p4

    move-object v4, v0

    move-wide v5, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda8;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;[Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;Ljava/util/ArrayList;JLvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 297
    return-object v0
.end method


# virtual methods
.method public final handlUnPublish()V
    .locals 2

    .line 195
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda6;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public handleCapInfo(JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "userdata"    # J
    .param p3, "subscriptionStatus"    # Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p4, "contactSubsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;>;"
    nop

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleCapInfoInternal(JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 82
    .local v0, "UriTerminatedReason":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1, p2}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda2;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;Ljava/util/ArrayList;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public handleCapInfo(JLvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;[Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;Z)V
    .locals 9
    .param p1, "userdata"    # J
    .param p3, "subscriptionStatus"    # Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;
    .param p4, "contactSubsInfo"    # [Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;
    .param p5, "isMultipartNotify"    # Z

    .line 95
    nop

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleCapInfoInternal(JLvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;[Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;)Ljava/util/ArrayList;

    move-result-object v6

    .line 98
    .local v6, "UriTerminatedReason":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    iget-object v7, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move v3, p5

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;Ljava/util/ArrayList;ZJ)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public handleCapInfo_1_1(JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;Ljava/util/ArrayList;Z)V
    .locals 9
    .param p1, "userdata"    # J
    .param p3, "subscriptionStatus"    # Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;
    .param p5, "isMultipartNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 111
    .local p4, "contactSubsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;>;"
    nop

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleCapInfoInternal(JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 114
    .local v6, "UriTerminatedReason":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    iget-object v7, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move v3, p5

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda4;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;Ljava/util/ArrayList;ZJ)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public final handleCmdStatus(JI)V
    .locals 2
    .param p1, "userData"    # J
    .param p3, "i"    # I

    .line 44
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p3, p1, p2}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda10;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public final handlePresenceServiceDied()V
    .locals 2

    .line 128
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda9;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public final handlePublishTrigger(III)V
    .locals 2
    .param p1, "hidlTrigger"    # I
    .param p2, "slotId"    # I
    .param p3, "version"    # I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePublishTrigger: hidlTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsService:ImsPresCapEventListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p3, p2}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda11;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;III)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public final handlePublishUpdate(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;)V
    .locals 2
    .param p1, "userdata"    # J
    .param p3, "hidlSipResponse"    # Lvendor/qti/ims/rcsuce/V1_0/SipResponse;

    .line 65
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;JLvendor/qti/ims/rcsuce/V1_0/SipResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public final handlePublishUpdate(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;)V
    .locals 2
    .param p1, "userdata"    # J
    .param p3, "aidlSipResponse"    # Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

    .line 70
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;JLvendor/qti/ims/rcsuceaidlservice/SipResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public final handleServiceStatus(I)V
    .locals 2
    .param p1, "s"    # I

    .line 122
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda7;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public final handleSipResponse(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;I)V
    .locals 8
    .param p1, "userdata"    # J
    .param p3, "hidlSipResponse"    # Lvendor/qti/ims/rcsuce/V1_0/SipResponse;
    .param p4, "retryAfter"    # I

    .line 53
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda3;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;JLvendor/qti/ims/rcsuce/V1_0/SipResponse;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public final handleSipResponse(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;I)V
    .locals 8
    .param p1, "userdata"    # J
    .param p3, "aidlSipResponse"    # Lvendor/qti/ims/rcsuceaidlservice/SipResponse;
    .param p4, "retryAfter"    # I

    .line 59
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda5;-><init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;JLvendor/qti/ims/rcsuceaidlservice/SipResponse;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method synthetic lambda$handlUnPublish$11$vendor-qti-imsrcs-uce-ImsPresCapEventListener()V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onUnpublish()V

    .line 197
    return-void
.end method

.method synthetic lambda$handleCapInfo$5$vendor-qti-imsrcs-uce-ImsPresCapEventListener(Ljava/util/ArrayList;J)V
    .locals 1
    .param p1, "UriTerminatedReason"    # Ljava/util/ArrayList;
    .param p2, "userdata"    # J

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    invoke-virtual {p0, p2, p3, p1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onResourceTerminated(JLjava/util/List;)V

    .line 86
    :cond_0
    return-void
.end method

.method synthetic lambda$handleCapInfo$6$vendor-qti-imsrcs-uce-ImsPresCapEventListener(Ljava/util/ArrayList;ZJ)V
    .locals 1
    .param p1, "UriTerminatedReason"    # Ljava/util/ArrayList;
    .param p2, "isMultipartNotify"    # Z
    .param p3, "userdata"    # J

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p0, p3, p4, p1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onResourceTerminated(JLjava/util/List;)V

    .line 102
    :cond_0
    return-void
.end method

.method synthetic lambda$handleCapInfoInternal$12$vendor-qti-imsrcs-uce-ImsPresCapEventListener(Ljava/util/ArrayList;Ljava/util/ArrayList;JLvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;)V
    .locals 10
    .param p1, "contactSubsInfo"    # Ljava/util/ArrayList;
    .param p2, "UriTerminatedReason"    # Ljava/util/ArrayList;
    .param p3, "userdata"    # J
    .param p5, "subscriptionStatus"    # Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "pidfXmls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;

    .line 256
    .local v2, "info":Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;
    iget-object v4, v2, Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;->pidfXml:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v4, v2, Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;->subStatus:Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;

    iget v4, v4, Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;->state:I

    if-ne v4, v3, :cond_0

    .line 259
    new-instance v3, Landroid/util/Pair;

    iget-object v4, v2, Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;->uri:Ljava/lang/String;

    .line 261
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v2, Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;->subStatus:Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;

    iget-object v5, v5, Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;->terminationReason:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v2    # "info":Lvendor/qti/ims/rcsuce/V1_0/SubscriptionInfo;
    :cond_0
    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0, p3, p4, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onNotifyCapabilitiesUpdate(JLjava/util/List;)V

    .line 266
    iget v1, p5, Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;->state:I

    if-ne v1, v3, :cond_2

    .line 267
    iget-object v7, p5, Lvendor/qti/ims/rcsuce/V1_0/SubscriptionStatus;->terminationReason:Ljava/lang/String;

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v5, p3

    invoke-virtual/range {v4 .. v9}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onTerminated(JLjava/lang/String;J)V

    .line 269
    :cond_2
    return-void
.end method

.method synthetic lambda$handleCapInfoInternal$13$vendor-qti-imsrcs-uce-ImsPresCapEventListener([Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;Ljava/util/ArrayList;JLvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;)V
    .locals 10
    .param p1, "contactSubsInfo"    # [Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;
    .param p2, "UriTerminatedReason"    # Ljava/util/ArrayList;
    .param p3, "userdata"    # J
    .param p5, "subscriptionStatus"    # Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "pidfXmls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    .line 283
    .local v4, "info":Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;
    iget-object v5, v4, Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;->pidfXml:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v5, v4, Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;->subStatus:Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;

    iget v5, v5, Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;->state:I

    if-ne v5, v3, :cond_0

    .line 286
    new-instance v3, Landroid/util/Pair;

    iget-object v5, v4, Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;->uri:Ljava/lang/String;

    .line 288
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v4, Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;->subStatus:Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;

    iget-object v6, v6, Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;->terminationReason:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v4    # "info":Lvendor/qti/ims/rcsuceaidlservice/SubscriptionInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p0, p3, p4, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onNotifyCapabilitiesUpdate(JLjava/util/List;)V

    .line 293
    iget v1, p5, Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;->state:I

    if-ne v1, v3, :cond_2

    .line 294
    iget-object v7, p5, Lvendor/qti/ims/rcsuceaidlservice/SubscriptionStatus;->terminationReason:Ljava/lang/String;

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v5, p3

    invoke-virtual/range {v4 .. v9}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onTerminated(JLjava/lang/String;J)V

    .line 296
    :cond_2
    return-void
.end method

.method synthetic lambda$handleCapInfo_1_1$7$vendor-qti-imsrcs-uce-ImsPresCapEventListener(Ljava/util/ArrayList;ZJ)V
    .locals 1
    .param p1, "UriTerminatedReason"    # Ljava/util/ArrayList;
    .param p2, "isMultipartNotify"    # Z
    .param p3, "userdata"    # J

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p0, p3, p4, p1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onResourceTerminated(JLjava/util/List;)V

    .line 118
    :cond_0
    return-void
.end method

.method synthetic lambda$handleCmdStatus$0$vendor-qti-imsrcs-uce-ImsPresCapEventListener(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "userData"    # J

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCmdStatus :: cmdStatus["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsService:ImsPresCapEventListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->convertHidlStatusCode(I)I

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onCmdStatusError(JI)V

    .line 50
    return-void
.end method

.method synthetic lambda$handlePresenceServiceDied$9$vendor-qti-imsrcs-uce-ImsPresCapEventListener()V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onPresenceServiceDied()V

    .line 130
    return-void
.end method

.method synthetic lambda$handlePublishTrigger$10$vendor-qti-imsrcs-uce-ImsPresCapEventListener(III)V
    .locals 5
    .param p1, "hidlTrigger"    # I
    .param p2, "version"    # I
    .param p3, "slotId"    # I

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "aospTriggerType":I
    const/4 v1, -0x1

    .line 139
    .local v1, "ratType":I
    const-string v2, "ImsRcsService:ImsPresCapEventListener"

    if-nez p1, :cond_0

    .line 140
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 141
    :cond_0
    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    .line 142
    const/4 v0, 0x7

    goto :goto_0

    .line 143
    :cond_1
    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    .line 144
    const/4 v0, 0x6

    goto :goto_0

    .line 145
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 146
    const/4 v0, 0x4

    goto :goto_0

    .line 147
    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 148
    const/4 v0, 0x5

    goto :goto_0

    .line 149
    :cond_4
    const/16 v3, 0x8

    if-ne p1, v3, :cond_5

    .line 150
    const/16 v0, 0x9

    .line 151
    const-string v3, "PresPublishTriggerType: MOVE_TO_IWLAN;setting rattype to: REGISTRATION_TECH_IWLAN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x1

    goto :goto_0

    .line 154
    :cond_5
    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    .line 155
    const/4 v0, 0x2

    .line 156
    const-string v3, "PresPublishTriggerType: MOVE_TO_LTE_VOPS_DISABLED;setting rattype to: REGISTRATION_TECH_LTE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, 0x0

    goto :goto_0

    .line 159
    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_7

    .line 160
    const/4 v0, 0x3

    .line 161
    const-string v3, "PresPublishTriggerType: MOVE_TO_LTE_VOPS_ENABLED;setting rattype to : REGISTRATION_TECH_LTE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x0

    goto :goto_0

    .line 164
    :cond_7
    const/16 v3, 0x9

    if-ne p1, v3, :cond_8

    .line 165
    const/16 v0, 0xa

    .line 166
    const-string v3, "PresPublishTriggerType: MOVE_TO_NR5G_VOPS_DISABLED;setting rattype to : REGISTRATION_TECH_NR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, 0x3

    goto :goto_0

    .line 169
    :cond_8
    const/16 v3, 0xa

    if-ne p1, v3, :cond_9

    .line 170
    const/16 v0, 0xb

    .line 171
    const-string v3, "PresPublishTriggerType: MOVE_TO_NR5G_VOPS_ENABLED;setting rattype to : REGISTRATION_TECH_NR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, 0x3

    goto :goto_0

    .line 174
    :cond_9
    const/4 v3, 0x7

    if-ne p1, v3, :cond_a

    .line 175
    const/16 v0, 0x8

    goto :goto_0

    .line 176
    :cond_a
    const/16 v3, 0xb

    if-ne p1, v3, :cond_b

    .line 177
    const-string v3, "PresPublishTriggerType: MOVE_TO_INTERNET_PDN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/16 v0, 0xc

    .line 180
    :cond_b
    :goto_0
    if-nez p2, :cond_d

    .line 181
    const-string v3, "Before calling getImsRcsRegistrationImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {p3}, Lvendor/qti/imsrcs/ImsRcsService;->getImsRcsRegistrationImpl(I)Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    move-result-object v3

    .line 183
    .local v3, "regImpl":Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;
    if-eqz v3, :cond_c

    .line 184
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 185
    .local v2, "features":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->checkToInvokeOnRegistered(Landroid/util/ArraySet;ILjava/lang/String;)V

    .line 186
    .end local v2    # "features":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_1

    .line 187
    :cond_c
    const-string v4, "getImsRcsRegistrationImpl returned NULL obj"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v3    # "regImpl":Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;
    :cond_d
    :goto_1
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onRequestPublishCapabilities(I)V

    .line 191
    return-void
.end method

.method synthetic lambda$handlePublishUpdate$3$vendor-qti-imsrcs-uce-ImsPresCapEventListener(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;)V
    .locals 6
    .param p1, "userdata"    # J
    .param p3, "hidlSipResponse"    # Lvendor/qti/ims/rcsuce/V1_0/SipResponse;

    .line 66
    iget-short v3, p3, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;->code:S

    iget-object v4, p3, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;->reasonPhrase:Ljava/lang/String;

    iget-object v5, p3, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;->reasonHeader:Ljava/lang/String;

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onPublishUpdate(JILjava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method synthetic lambda$handlePublishUpdate$4$vendor-qti-imsrcs-uce-ImsPresCapEventListener(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;)V
    .locals 6
    .param p1, "userdata"    # J
    .param p3, "aidlSipResponse"    # Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

    .line 71
    iget-char v3, p3, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;->code:C

    iget-object v4, p3, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;->reasonPhrase:Ljava/lang/String;

    iget-object v5, p3, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;->reasonHeader:Ljava/lang/String;

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onPublishUpdate(JILjava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method synthetic lambda$handleServiceStatus$8$vendor-qti-imsrcs-uce-ImsPresCapEventListener(I)V
    .locals 0
    .param p1, "s"    # I

    .line 123
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onServiceStatus(I)V

    .line 124
    return-void
.end method

.method synthetic lambda$handleSipResponse$1$vendor-qti-imsrcs-uce-ImsPresCapEventListener(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;I)V
    .locals 7
    .param p1, "userdata"    # J
    .param p3, "hidlSipResponse"    # Lvendor/qti/ims/rcsuce/V1_0/SipResponse;
    .param p4, "retryAfter"    # I

    .line 54
    iget-short v3, p3, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;->code:S

    iget-object v4, p3, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;->reasonPhrase:Ljava/lang/String;

    iget-object v5, p3, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;->reasonHeader:Ljava/lang/String;

    move-object v0, p0

    move-wide v1, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onSipResponse(JILjava/lang/String;Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method synthetic lambda$handleSipResponse$2$vendor-qti-imsrcs-uce-ImsPresCapEventListener(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;I)V
    .locals 7
    .param p1, "userdata"    # J
    .param p3, "aidlSipResponse"    # Lvendor/qti/ims/rcsuceaidlservice/SipResponse;
    .param p4, "retryAfter"    # I

    .line 60
    iget-char v3, p3, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;->code:C

    iget-object v4, p3, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;->reasonPhrase:Ljava/lang/String;

    iget-object v5, p3, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;->reasonHeader:Ljava/lang/String;

    move-object v0, p0

    move-wide v1, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->onSipResponse(JILjava/lang/String;Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public onCmdStatusError(JI)V
    .locals 0
    .param p1, "userdata"    # J
    .param p3, "i"    # I

    .line 207
    return-void
.end method

.method public onNotifyCapabilitiesUpdate(JLjava/util/List;)V
    .locals 0
    .param p1, "userdata"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p3, "PidfXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onPresenceServiceDied()V
    .locals 0

    .line 202
    return-void
.end method

.method public onPublishUpdate(JILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userdata"    # J
    .param p3, "code"    # I
    .param p4, "ReasonPhrase"    # Ljava/lang/String;
    .param p5, "reasonHeader"    # Ljava/lang/String;

    .line 209
    return-void
.end method

.method public onRequestPublishCapabilities(I)V
    .locals 0
    .param p1, "aospPublishTriggerType"    # I

    .line 203
    return-void
.end method

.method public onResourceTerminated(JLjava/util/List;)V
    .locals 0
    .param p1, "userdata"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 212
    .local p3, "uriTerminatedReason":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    return-void
.end method

.method public onServiceStatus(I)V
    .locals 0
    .param p1, "s"    # I

    .line 201
    return-void
.end method

.method public onSipResponse(JILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "userdata"    # J
    .param p3, "code"    # I
    .param p4, "ReasonPhrase"    # Ljava/lang/String;
    .param p5, "reasonHeader"    # Ljava/lang/String;
    .param p6, "retryAfter"    # I

    .line 208
    return-void
.end method

.method public onTerminated(JLjava/lang/String;J)V
    .locals 0
    .param p1, "userdata"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "retryAfterMilliseconds"    # J

    .line 213
    return-void
.end method

.method public onUnpublish()V
    .locals 0

    .line 204
    return-void
.end method
