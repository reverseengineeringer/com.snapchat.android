.class public final Lmj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmj;

.field final synthetic val$adKey:Ljava/lang/String;

.field final synthetic val$adPlacement:Lml;


# direct methods
.method public constructor <init>(Lmj;Lml;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lmj$2;->this$0:Lmj;

    iput-object p2, p0, Lmj$2;->val$adPlacement:Lml;

    iput-object p3, p0, Lmj$2;->val$adKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lmj$2;->this$0:Lmj;

    iget-object v1, p0, Lmj$2;->val$adPlacement:Lml;

    invoke-virtual {v0, v1}, Lmj;->c(Lml;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "AdManager"

    const-string v2, "EndAdSplash for adKey:%s threw exception:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmj$2;->val$adKey:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
