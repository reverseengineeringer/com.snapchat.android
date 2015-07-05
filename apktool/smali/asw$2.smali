.class final Lasw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lasw;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lasw;


# direct methods
.method constructor <init>(Lasw;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lasw$2;->this$0:Lasw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lasw$2;->this$0:Lasw;

    invoke-virtual {v0}, Lasw;->b()V

    .line 195
    return-void
.end method
