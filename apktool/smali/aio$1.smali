.class final Laio$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laio;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laio;


# direct methods
.method constructor <init>(Laio;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Laio$1;->a:Laio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Laio$1;->a:Laio;

    invoke-virtual {v0}, Laio;->d()V

    .line 66
    return-void
.end method
