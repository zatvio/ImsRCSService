.class public Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
.super Ljava/lang/Object;
.source "OptionsAidlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mAidlOptionsListener:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;

.field mAidlOptionsService:Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;

.field mOptionsCapListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mServiceAvailable:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "SlotId"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;-><init>(Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$1;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mAidlOptionsListener:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;

    .line 33
    const-string v0, "ImsRcsService:OptionsAidlServiceWrapper"

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mServiceAvailable:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    .line 30
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 60
    return-void
.end method

.method public getAidlOptionsListener()Lvendor/qti/ims/rcsuceaidlservice/IOptionsListener;
    .locals 1

    .line 41
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mAidlOptionsListener:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;

    return-object v0
.end method

.method public optionsDied()V
    .locals 2

    .line 62
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 63
    .local v1, "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    invoke-virtual {v1}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleOptionsServiceDied()V

    .line 64
    .end local v1    # "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public removeOptionsCapListeners(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;)V
    .locals 1
    .param p1, "e"    # Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 55
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public respondToIncomingOptions(IILjava/lang/String;Ljava/util/List;Z)V
    .locals 5
    .param p1, "tId"    # I
    .param p2, "code"    # I
    .param p3, "phrase"    # Ljava/lang/String;
    .param p5, "bContactInBL"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 81
    .local p4, "caps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;

    invoke-direct {v0}, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;-><init>()V

    .line 82
    .local v0, "resp":Lvendor/qti/ims/rcsuceaidlservice/SipResponse;
    int-to-char v1, p2

    iput-char v1, v0, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;->code:C

    .line 83
    iput-object p3, v0, Lvendor/qti/ims/rcsuceaidlservice/SipResponse;->reasonPhrase:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "fts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    nop

    .end local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 88
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mAidlOptionsService:Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz p5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    int-to-byte v4, v4

    invoke-interface {v2, p1, v0, v3, v4}, Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;->respondToIncomingOptions(ILvendor/qti/ims/rcsuceaidlservice/SipResponse;[Ljava/lang/String;B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .end local v0    # "resp":Lvendor/qti/ims/rcsuceaidlservice/SipResponse;
    .end local v1    # "fts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public sendCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;J)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p3, "userData"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 67
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "fts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 72
    :cond_0
    :try_start_0
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mAidlOptionsService:Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v1, v2, v3, p3, p4}, Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;->getContactCapability(Ljava/lang/String;[Ljava/lang/String;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_1

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 76
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public setAidlOptionsService(Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;)V
    .locals 0
    .param p1, "service"    # Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;

    .line 45
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mAidlOptionsService:Lvendor/qti/ims/rcsuceaidlservice/IOptionsService;

    .line 46
    return-void
.end method

.method public setOptionsCapListeners(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;)V
    .locals 2
    .param p1, "e"    # Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 49
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mServiceAvailable:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleServiceStatus(I)V

    .line 53
    :cond_0
    return-void
.end method
