.class final Layo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Layo;

.field final synthetic val$pingId:Ljava/lang/String;


# direct methods
.method constructor <init>(Layo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Layo$3;->this$0:Layo;

    iput-object p2, p0, Layo$3;->val$pingId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Layo$3;->this$0:Layo;

    iget-object v1, p0, Layo$3;->val$pingId:Ljava/lang/String;

    iget-object v2, v0, Layo;->mPingIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Layo;->mInterface:Layo$a;

    invoke-interface {v0}, Layo$a;->f()V

    .line 118
    :cond_0
    return-void
.end method
