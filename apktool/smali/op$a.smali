.class public final Lop$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field final synthetic this$0:Lop;


# direct methods
.method public constructor <init>(Lop;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lop$a;->this$0:Lop;

    invoke-direct {p0}, Lpl;-><init>()V

    return-void
.end method
