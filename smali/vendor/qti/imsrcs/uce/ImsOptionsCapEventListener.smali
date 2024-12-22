.class public abstract Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
.super Ljava/lang/Object;
.source "ImsOptionsCapEventListener.java"


# instance fields
.field protected mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 34
    return-void
.end method


# virtual methods
.method public final handleCmdStatus(JI)V
    .locals 2
    .param p1, "userdata"    # J
    .param p3, "i"    # I

    .line 69
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda6;-><init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;JI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public final handleOptionsServiceDied()V
    .locals 2

    .line 43
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public final handleRemoteCapReq(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "tid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p3, "fts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;-><init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public final handleRemoteCapReq(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "tid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "fts"    # [Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda2;-><init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public final handleServiceStatus(I)V
    .locals 2
    .param p1, "s"    # I

    .line 37
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda3;-><init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method public final handleSipResonse(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "userdata"    # J
    .param p3, "sipResponse"    # Lvendor/qti/ims/rcsuce/V1_0/SipResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lvendor/qti/ims/rcsuce/V1_0/SipResponse;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p4, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda5;-><init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;JLvendor/qti/ims/rcsuce/V1_0/SipResponse;Ljava/util/ArrayList;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public final handleSipResonse(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;[Ljava/lang/String;)V
    .locals 8
    .param p1, "userdata"    # J
    .param p3, "sipResponse"    # Lvendor/qti/ims/rcsuceaidlservice/SipResponse;
    .param p4, "arrayList"    # [Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;JLvendor/qti/ims/rcsuceaidlservice/SipResponse;[Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method synthetic lambda$handleCmdStatus$6$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(JI)V
    .locals 0
    .param p1, "userdata"    # J
    .param p3, "i"    # I

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->onCmdStatus(JI)V

    .line 71
    return-void
.end method

.method synthetic lambda$handleOptionsServiceDied$1$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener()V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->onOptionsServiceDied()V

    .line 45
    return-void
.end method

.method synthetic lambda$handleRemoteCapReq$2$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "tid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "fts"    # Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->onRemoteCapabilityRequest(ILjava/lang/String;Ljava/util/List;)V

    .line 51
    return-void
.end method

.method synthetic lambda$handleRemoteCapReq$3$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "tid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "fts"    # [Ljava/lang/String;

    .line 55
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->onRemoteCapabilityRequest(ILjava/lang/String;Ljava/util/List;)V

    .line 56
    return-void
.end method

.method synthetic lambda$handleServiceStatus$0$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(I)V
    .locals 0
    .param p1, "s"    # I

    .line 38
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->onServiceStatus(I)V

    .line 39
    return-void
.end method

.method synthetic lambda$handleSipResonse$4$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "userdata"    # J
    .param p3, "sipResponse"    # Lvendor/qti/ims/rcsuce/V1_0/SipResponse;
    .param p4, "arrayList"    # Ljava/util/ArrayList;

    .line 60
    iget-short v3, p3, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;->code:S

    iget-object v4, p3, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;->reasonPhrase:Ljava/lang/String;

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->onSipResponse(JILjava/lang/String;Ljava/util/List;)V

    .line 61
    return-void
.end method

.method synthetic lambda$handleSipResonse$5$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;[Ljava/lang/String;)V
    .locals 6
    .param p1, "userdata"    # J
    .param p3, "sipResponse"    # Lvendor/qti/ims/rcsuceaidlservice/SipResponse;
    .param p4, "arrayList"    # [Ljava/lang/String;

    .line 65
    iget-char v3, p3, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;->code:C

    iget-object v4, p3, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;->reasonPhrase:Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->onSipResponse(JILjava/lang/String;Ljava/util/List;)V

    .line 66
    return-void
.end method

.method public onCmdStatus(JI)V
    .locals 0
    .param p1, "userdata"    # J
    .param p3, "i"    # I

    .line 77
    return-void
.end method

.method public onOptionsServiceDied()V
    .locals 0

    .line 74
    return-void
.end method

.method public onRemoteCapabilityRequest(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "tid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p3, "remoteFTs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onServiceStatus(I)V
    .locals 0
    .param p1, "s"    # I

    .line 73
    return-void
.end method

.method public onSipResponse(JILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "userdata"    # J
    .param p3, "sipCode"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p5, "caps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
