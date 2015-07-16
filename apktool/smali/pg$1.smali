.class final Lpg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpg;


# direct methods
.method constructor <init>(Lpg;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lpg$1;->this$0:Lpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamp$b;)V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lpg$1;->this$0:Lpg;

    iget-object v1, p1, Lamp$b;->a:Lus;

    invoke-virtual {p1}, Lamp$b;->a()Z

    move-result v2

    iget-object v3, p1, Lamp$b;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2, v3}, Lpg;->a(Lus;ZLjava/lang/Exception;)V

    .line 237
    return-void
.end method
