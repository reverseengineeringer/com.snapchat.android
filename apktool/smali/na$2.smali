.class public final Lna$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lna;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lna;

.field final synthetic val$adKey:Ljava/lang/String;

.field final synthetic val$adPlacement:Lnc;


# direct methods
.method public constructor <init>(Lna;Lnc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lna$2;->this$0:Lna;

    iput-object p2, p0, Lna$2;->val$adPlacement:Lnc;

    iput-object p3, p0, Lna$2;->val$adKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lna$2;->this$0:Lna;

    iget-object v1, p0, Lna$2;->val$adPlacement:Lnc;

    invoke-virtual {v0, v1}, Lna;->c(Lnc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lna$2;->val$adKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    goto :goto_0
.end method
