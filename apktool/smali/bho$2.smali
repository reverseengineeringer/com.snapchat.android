.class final Lbho$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbho;


# direct methods
.method constructor <init>(Lbho;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lbho$2;->this$0:Lbho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lbho$2;->this$0:Lbho;

    invoke-virtual {v0}, Lbho;->b()V

    .line 37
    return-void
.end method
