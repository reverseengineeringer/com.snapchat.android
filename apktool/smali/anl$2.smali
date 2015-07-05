.class final Lanl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanl;


# direct methods
.method constructor <init>(Lanl;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lanl$2;->a:Lanl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lanl$2;->a:Lanl;

    invoke-static {v0}, Lanl;->b(Lanl;)Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a()V

    .line 158
    :cond_0
    return-void
.end method
