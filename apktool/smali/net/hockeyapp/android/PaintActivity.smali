.class public Lnet/hockeyapp/android/PaintActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lnet/hockeyapp/android/views/PaintView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 195
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    .line 198
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 199
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_1

    .line 203
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 208
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_1
    if-nez v3, :cond_2

    :goto_0
    return-object p2

    .line 208
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 211
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    const-string v1, "imageUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 47
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/PaintActivity;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/PaintActivity;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 51
    if-le v4, v5, :cond_0

    move v1, v2

    .line 54
    :goto_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v0}, Lnet/hockeyapp/android/views/PaintView;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v6

    .line 55
    invoke-virtual {p0, v6}, Lnet/hockeyapp/android/PaintActivity;->setRequestedOrientation(I)V

    .line 57
    if-eq v1, v6, :cond_1

    .line 84
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 51
    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Lnet/hockeyapp/android/views/PaintView;

    invoke-direct {v1, p0, v0, v4, v5}, Lnet/hockeyapp/android/views/PaintView;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V

    iput-object v1, p0, Lnet/hockeyapp/android/PaintActivity;->a:Lnet/hockeyapp/android/views/PaintView;

    .line 66
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    iget-object v2, p0, Lnet/hockeyapp/android/PaintActivity;->a:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/PaintActivity;->setContentView(Landroid/view/View;)V

    .line 82
    const/16 v0, 0x600

    invoke-static {v0}, Lbwj;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 90
    const/16 v0, 0x601

    invoke-static {v0}, Lbwj;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 91
    const/4 v0, 0x2

    const/16 v1, 0x602

    invoke-static {v1}, Lbwj;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 92
    const/4 v0, 0x3

    const/16 v1, 0x603

    invoke-static {v1}, Lbwj;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 94
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lnet/hockeyapp/android/PaintActivity;->a:Lnet/hockeyapp/android/views/PaintView;

    iget-object v0, v0, Lnet/hockeyapp/android/views/PaintView;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lnet/hockeyapp/android/PaintActivity$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/PaintActivity$1;-><init>(Lnet/hockeyapp/android/PaintActivity;)V

    .line 140
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    const/16 v2, 0x604

    invoke-static {v2}, Lbwj;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x606

    .line 142
    invoke-static {v2}, Lbwj;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v2, 0x605

    .line 143
    invoke-static {v2}, Lbwj;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 145
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 107
    :pswitch_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "HockeyApp"

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lnet/hockeyapp/android/PaintActivity;->b:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/hockeyapp/android/PaintActivity;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/PaintActivity;->a:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/views/PaintView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lnet/hockeyapp/android/PaintActivity;->a:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/PaintView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Lnet/hockeyapp/android/PaintActivity$2;

    invoke-direct {v3, p0, v0}, Lnet/hockeyapp/android/PaintActivity$2;-><init>(Lnet/hockeyapp/android/PaintActivity;Landroid/graphics/Bitmap;)V

    new-array v0, v1, [Ljava/io/File;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-virtual {v3, v0}, Lnet/hockeyapp/android/PaintActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "imageUri"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v6, v0}, Lnet/hockeyapp/android/PaintActivity;->setResult(ILandroid/content/Intent;)V

    :goto_2
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/hockeyapp/android/PaintActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 111
    :pswitch_1
    iget-object v0, p0, Lnet/hockeyapp/android/PaintActivity;->a:Lnet/hockeyapp/android/views/PaintView;

    iget-object v2, v0, Lnet/hockeyapp/android/views/PaintView;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lnet/hockeyapp/android/views/PaintView;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto/16 :goto_0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lnet/hockeyapp/android/PaintActivity;->a:Lnet/hockeyapp/android/views/PaintView;

    iget-object v2, v0, Lnet/hockeyapp/android/views/PaintView;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    invoke-virtual {v0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 100
    const/4 v0, 0x1

    return v0
.end method
