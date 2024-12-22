.class public Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
.super Ljava/lang/Object;
.source "OptionsServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

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

.field private mhidlOptionsListener:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;

.field mhidlOptionsService:Lvendor/qti/ims/rcsuce/V1_0/IOptionsService;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "SlotId"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;-><init>(Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$1;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mhidlOptionsListener:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;

    .line 35
    const-string v0, "ImsRcsService:OptionsServiceWrapper"

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mServiceAvailable:I

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->LOG_TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    .line 31
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 62
    return-void
.end method

.method public getHidlOptionsListener()Lvendor/qti/ims/rcsuce/V1_0/IOptionsListener;
    .locals 1

    .line 43
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mhidlOptionsListener:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;

    return-object v0
.end method

.method public optionsDied()V
    .locals 2

    .line 64
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 65
    .local v1, "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    invoke-virtual {v1}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleOptionsServiceDied()V

    .line 66
    .end local v1    # "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public removeOptionsCapListeners(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;)V
    .locals 1
    .param p1, "e"    # Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 57
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public respondToIncomingOptions(IILjava/lang/String;Ljava/util/List;Z)V
    .locals 4
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

    .line 87
    .local p4, "caps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;

    invoke-direct {v0}, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;-><init>()V

    .line 88
    .local v0, "resp":Lvendor/qti/ims/rcsuce/V1_0/SipResponse;
    int-to-short v1, p2

    iput-short v1, v0, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;->code:S

    .line 89
    iput-object p3, v0, Lvendor/qti/ims/rcsuce/V1_0/SipResponse;->reasonPhrase:Ljava/lang/String;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
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

    .line 92
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    nop

    .end local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 94
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mhidlOptionsService:Lvendor/qti/ims/rcsuce/V1_0/IOptionsService;

    if-eqz v2, :cond_2

    .line 95
    if-eqz p5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    int-to-byte v3, v3

    invoke-interface {v2, p1, v0, v1, v3}, Lvendor/qti/ims/rcsuce/V1_0/IOptionsService;->respondToIncomingOptions(ILvendor/qti/ims/rcsuce/V1_0/SipResponse;Ljava/util/ArrayList;B)I

    goto :goto_2

    .line 97
    :cond_2
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v3, " respondToIncomingOptions : mhidlOptionsService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "resp":Lvendor/qti/ims/rcsuce/V1_0/SipResponse;
    .end local v1    # "fts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    goto :goto_3

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method public sendCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;J)V
    .locals 3
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

    .line 69
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
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

    .line 71
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mhidlOptionsService:Lvendor/qti/ims/rcsuce/V1_0/IOptionsService;

    if-eqz v1, :cond_1

    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, p3, p4}, Lvendor/qti/ims/rcsuce/V1_0/IOptionsService;->getContactCapability(Ljava/lang/String;Ljava/util/ArrayList;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 80
    :cond_1
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v2, " sendCapabilityRequest : mhidlOptionsService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_2
    return-void
.end method

.method public setHidlOptionsService(Lvendor/qti/ims/rcsuce/V1_0/IOptionsService;)V
    .locals 0
    .param p1, "service"    # Lvendor/qti/ims/rcsuce/V1_0/IOptionsService;

    .line 47
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mhidlOptionsService:Lvendor/qti/ims/rcsuce/V1_0/IOptionsService;

    .line 48
    return-void
.end method

.method public setOptionsCapListeners(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;)V
    .locals 2
    .param p1, "e"    # Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 51
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mServiceAvailable:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 53
    invoke-virtual {p1, v0}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleServiceStatus(I)V

    .line 55
    :cond_0
    return-void
.end method
