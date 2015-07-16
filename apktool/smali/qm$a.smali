.class public final Lqm$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field serializedUrlRoutingMap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currentUrlEntities"
    .end annotation
.end field

.field final synthetic this$0:Lqm;

.field username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqm;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lqm$a;->this$0:Lqm;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 52
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqm$a;->username:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lqm$a;->this$0:Lqm;

    iget-object v0, v0, Lqm;->mUrlRoutingManager:Lbgt;

    invoke-virtual {v0}, Lbgt;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqm$a;->serializedUrlRoutingMap:Ljava/lang/String;

    return-void
.end method
