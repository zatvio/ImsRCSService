.class public final synthetic Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda6;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    iput-wide p2, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda6;->f$1:J

    iput p4, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda6;->f$0:Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;

    iget-wide v1, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda6;->f$1:J

    iget v3, p0, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener$$ExternalSyntheticLambda6;->f$2:I

    invoke-virtual {v0, v1, v2, v3}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;->lambda$handleCmdStatus$6$vendor-qti-imsrcs-uce-ImsOptionsCapEventListener(JI)V

    return-void
.end method
