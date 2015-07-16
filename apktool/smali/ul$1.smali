.class final Lul$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lul;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lul;


# direct methods
.method constructor <init>(Lul;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lul$1;->this$0:Lul;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lul$1;->this$0:Lul;

    invoke-virtual {v0}, Lul;->executeSynchronously()Lus;

    .line 72
    return-void
.end method
