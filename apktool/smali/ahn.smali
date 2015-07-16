.class public final Lahn;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahn$b;,
        Lahn$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lahn$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lahn$a;)V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 30
    iput-object p1, p0, Lahn;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lahn;->d:Lahn$a;

    .line 32
    iget-object v0, p0, Lahn;->a:Landroid/content/Context;

    const v1, 0x7f0c02b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lahn;->c:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lahn;->a:Landroid/content/Context;

    const v1, 0x7f0c02b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lahn;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic a(Lahn;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lahn;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lahn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lahn;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lahn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lahn;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lahn;)Lahn$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lahn;->d:Lahn$a;

    return-object v0
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahn$b;

    .line 49
    sget-object v1, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->DEVICE_ID:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, v0, Lahn$b;->a:Landroid/widget/TextView;

    sget-object v3, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->DEVICE_NAME:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getColumnNumber()I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, v0, Lahn$b;->b:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lahn;->a:Landroid/content/Context;

    sget-object v5, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->LAST_LOGIN:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->getColumnNumber()I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Latz;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x0

    const v5, 0x7f0c02af

    invoke-static {v4, v5, v3}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, v0, Lahn$b;->c:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v2, v0, Lahn$b;->d:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v2, v0, Lahn$b;->c:Landroid/view/View;

    new-instance v3, Lahn$1;

    invoke-direct {v3, p0, v0, v1}, Lahn$1;-><init>(Lahn;Lahn$b;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    new-instance v1, Lahn$b;

    invoke-direct {v1, v0}, Lahn$b;-><init>(Landroid/view/View;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    return-object v0
.end method
