.class Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;
.super Lvendor/qti/ims/rcsuce/V1_0/IOptionsListener$Stub;
.source "OptionsServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/rcsuce/V1_0/IOptionsListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$1;

    .line 105
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;-><init>(Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public incomingOptionsRequest(Ljava/lang/String;Ljava/util/ArrayList;S)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p3, "i"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;S)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OptionsListener: incomingOptionsRequest :: received tid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 139
    .local v1, "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    invoke-virtual {v1, p3, p1, p2}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleRemoteCapReq(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 140
    .end local v1    # "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    goto :goto_0

    .line 141
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

    .line 127
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 131
    .local v1, "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    invoke-virtual {v1, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleCmdStatus(JI)V

    .line 132
    .end local v1    # "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    goto :goto_0

    .line 133
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

    .line 110
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsListener: onServiceStatus :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    iput p1, v0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mServiceAvailable:I

    .line 112
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 113
    .local v1, "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    invoke-virtual {v1, p1}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleServiceStatus(I)V

    .line 114
    .end local v1    # "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public onSipResponse(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "userData"    # J
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    .local p4, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->access$100(Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;)Ljava/lang/String;

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

    .line 120
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->mOptionsCapListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    .line 121
    .local v1, "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->handleSipResonse(JLvendor/qti/ims/rcsuce/V1_0/SipResponse;Ljava/util/ArrayList;)V

    .line 122
    .end local v1    # "l":Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method
