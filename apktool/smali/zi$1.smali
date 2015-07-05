.class final Lzi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lals$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzi;


# direct methods
.method constructor <init>(Lzi;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lzi$1;->a:Lzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lals$b;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lzi$1;->a:Lzi;

    invoke-virtual {v0, p1}, Lzi;->a(Lals$b;)V

    .line 69
    return-void
.end method
