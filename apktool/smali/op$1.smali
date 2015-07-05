.class final Lop$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lals$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lop;


# direct methods
.method constructor <init>(Lop;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lop$1;->this$0:Lop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lals$b;)V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lop$1;->this$0:Lop;

    iget-object v1, p1, Lals$b;->a:Luc;

    invoke-virtual {p1}, Lals$b;->a()Z

    move-result v2

    iget-object v3, p1, Lals$b;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2, v3}, Lop;->a(Luc;ZLjava/lang/Exception;)V

    .line 237
    return-void
.end method
