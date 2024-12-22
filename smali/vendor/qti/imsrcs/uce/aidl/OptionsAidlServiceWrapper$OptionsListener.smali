.class Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;
.super Lvendor/qti/ims/rcsuceaidlservice/IOptionsListener$Stub;
.source "OptionsAidlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/rcsuceaidlservice/IOptionsListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$1;

    .line 95
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;-><init>(Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public incomingOptionsRequest(Ljava/lang/String;[Ljava/lang/String;C)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "arrayList"    # [Ljava/lang/String;
    .param p3, "i"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OptionsListener: incomingOptionsRequest :: received tid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 137
    .local v1, "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    invoke-virtual {v1, p3, p1, p2}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleRemoteCapReq(ILjava/lang/String;[Ljava/lang/String;)V

    .line 138
    .end local v1    # "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public onCmdStatus(JI)V
    .locals 2
    .param p1, "userData"    # J
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 129
    .local v1, "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    invoke-virtual {v1, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleCmdStatus(JI)V

    .line 130
    .end local v1    # "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method public onServiceStatus(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsListener: onServiceStatus :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    iput p1, v0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mServiceAvailable:I

    .line 110
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 111
    .local v1, "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    invoke-virtual {v1, p1}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleServiceStatus(I)V

    .line 112
    .end local v1    # "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public onSipResponse(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;[Ljava/lang/String;)V
    .locals 3
    .param p1, "userData"    # J
    .param p3, "sipResponse"    # Lvendor/qti/ims/rcsuceaidlservice/SipResponse;
    .param p4, "arrayList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OptionsListener: onSipResponse :: received userdata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 119
    .local v1, "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleSipResonse(JLvendor/qti/ims/rcsuceaidlservice/SipResponse;[Ljava/lang/String;)V

    .line 120
    .end local v1    # "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method
