.class final Lahs$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahs;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lahs;


# direct methods
.method constructor <init>(Lahs;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lahs$2;->b:Lahs;

    iput-object p2, p0, Lahs$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lahs$2;->b:Lahs;

    iget-object v1, p0, Lahs$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lahs;->b(Ljava/lang/String;)V

    .line 185
    return-void
.end method
