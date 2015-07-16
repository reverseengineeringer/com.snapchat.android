.class final Lds$2;
.super Lcv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lds;->a([Ljava/lang/Object;III)Leg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcv",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(II[Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1058
    iput-object p3, p0, Lds$2;->a:[Ljava/lang/Object;

    iput p4, p0, Lds$2;->b:I

    invoke-direct {p0, p1, p2}, Lcv;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v0, p0, Lds$2;->a:[Ljava/lang/Object;

    iget v1, p0, Lds$2;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
