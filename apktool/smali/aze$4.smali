.class final Laze$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laze;


# direct methods
.method constructor <init>(Laze;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Laze$4;->this$0:Laze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Laze$4;->this$0:Laze;

    invoke-virtual {v0}, Laze;->b()Z

    .line 494
    return-void
.end method
