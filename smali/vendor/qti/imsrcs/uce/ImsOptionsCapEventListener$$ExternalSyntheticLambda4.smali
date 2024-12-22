.class public final synthetic Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    iput p2, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda4;->f$3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->lambda$handleRemoteCapReq$2$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
