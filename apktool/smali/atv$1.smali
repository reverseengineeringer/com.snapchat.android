.class final Latv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latv;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Latv;


# direct methods
.method constructor <init>(Latv;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Latv$1;->this$0:Latv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Latv$1;->this$0:Latv;

    invoke-virtual {v0}, Latv;->b()V

    .line 172
    return-void
.end method
